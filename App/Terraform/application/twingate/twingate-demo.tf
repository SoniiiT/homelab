# Remote Network
resource "twingate_remote_network" "net_demo" {
    name = "net-demo"
    location = "ON_PREMISE"
}

# Security Policy
data "twingate_security_policy" "policy_demo" {
    name = "Default Policy"
}

# Groups
resource "twingate_group" "demo" {
    name = "Demo"
}

# Resources
# Wildcard DNS
resource "twingate_resource" "wildcard_dns_demo" {
    name = "Wildcard Demo"
    address = "*.demo.soniiit.net"
    remote_network_id = twingate_remote_network.net_demo.id

    security_policy_id = data.twingate_security_policy.policy_demo.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "ALLOW_ALL"
        }
        udp = {
            policy = "ALLOW_ALL"
        }
    }

    dynamic "access_group" {
        for_each = [twingate_group.demo.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.policy_demo.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}
# Twingate Connector Servers
resource "twingate_resource" "twingate_connector_04" {
    name = "twingate-connector-04"
    address = "192.168.178.33"
    alias = "tg-cn-04.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_demo.id

    security_policy_id = data.twingate_security_policy.policy_demo.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["22"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    dynamic "access_group" {
        for_each = [twingate_group.demo.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.policy_demo.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}