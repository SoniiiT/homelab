# Remote Network
resource "twingate_remote_network" "net_dev" {
    name = "net-dev"
    location = "ON_PREMISE"
}

# Security Policy
data "twingate_security_policy" "policy_dev" {
    name = "Default Policy"
}

# Groups
resource "twingate_group" "devops" {
    name = "Devops"
}

# Resources
# Wildcard DNS
resource "twingate_resource" "wildcard_dns_dev" {
    name = "Wildcard Dev"
    address = "*.demo.soniiit.net"
    remote_network_id = twingate_remote_network.net_dev.id

    security_policy_id = data.twingate_security_policy.policy_dev.id

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
        for_each = [twingate_group.devops.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.policy_dev.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}

resource "twingate_resource" "app_srv_07" {
    name = "app-srv-07"
    address = "192.168.178.34"
    alias = "app-srv-07.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_dev.id

    security_policy_id = data.twingate_security_policy.policy_dev.id

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
        for_each = [twingate_group.devops.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.policy_dev.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}