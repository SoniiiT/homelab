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

# Twingate Connector Servers
resource "twingate_resource" "twingate_connector_03" {
    name = "twingate-connector-03"
    address = "192.168.178.32"
    alias = "tg-cn-03.home.soniiit.net"
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

resource "twingate_resource" "k8s_lite_soniiit_cp01" {
    name = "k8s-lite-soniiit-cp01"
    address = "192.168.178.70"
    alias = "k8s-lite-soniiit-cp01.home.soniiit.net"
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

resource "twingate_resource" "k8s_lite_soniiit_w01" {
    name = "k8s-lite-soniiit-w01"
    address = "192.168.178.71"
    alias = "k8s-lite-soniiit-w01.home.soniiit.net"
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

resource "twingate_resource" "k8s_lite_soniiit_w02" {
    name = "k8s-lite-soniiit-w02"
    address = "192.168.178.72"
    alias = "k8s-lite-soniiit-w02.home.soniiit.net"
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

resource "twingate_resource" "k8s_lite_soniiit_nfs01" {
    name = "k8s-lite-soniiit-nfs01"
    address = "192.168.178.73"
    alias = "k8s-lite-soniiit-nfs01.home.soniiit.net"
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