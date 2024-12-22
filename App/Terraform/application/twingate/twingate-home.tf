# Remote Networ
resource "twingate_remote_network" "net_home" {
    name = "net-home"
    location = "ON_PREMISE"
}

# Security Policy
data "twingate_security_policy" "policy_home" {
    name = "Default Policy"
}

# Groups
resource "twingate_group" "home" {
    name = "Home"
}

# Resources
# Wildcard DNS
resource "twingate_resource" "wildcard_dns_home" {
    name = "Wildcard Home"
    address = "*.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_home.id

    security_policy_id = data.twingate_security_policy.policy_home.id

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
        for_each = [twingate_group.home.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.policy_home.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}

resource "twingate_resource" "wildcard_dns_dev" {
    name = "Wildcard Dev"
    address = "*.dev.soniiit.net"
    remote_network_id = twingate_remote_network.net_home.id

    security_policy_id = data.twingate_security_policy.policy_home.id

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
        for_each = [twingate_group.home.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.policy_home.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}

# Twingate Connector Servers
resource "twingate_resource" "twingate_connector_01" {
    name = "twingate-connector-01"
    address = "192.168.178.7"
    alias = "tg-cn-01.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_home.id

    security_policy_id = data.twingate_security_policy.policy_home.id

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
        for_each = [twingate_group.home.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.policy_home.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}

# Home Network
resource "twingate_resource" "gw_01" {
    name = "gw-01"
    address = "192.168.178.1"
    alias = "gw-01.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_home.id

    security_policy_id = data.twingate_security_policy.policy_home.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["80"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    dynamic "access_group" {
        for_each = [twingate_group.home.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.policy_home.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}

resource "twingate_resource" "gw_02" {
    name = "gw-02"
    address = "192.168.178.2"
    alias = "gw-02.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_home.id

    security_policy_id = data.twingate_security_policy.policy_home.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["80"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    dynamic "access_group" {
        for_each = [twingate_group.home.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.policy_home.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}

resource "twingate_resource" "sw_01" {
    name = "sw-01"
    address = "192.168.178.99"
    alias = "sw-01.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_home.id

    security_policy_id = data.twingate_security_policy.policy_home.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["80"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    dynamic "access_group" {
        for_each = [twingate_group.home.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.policy_home.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}

# Application Servers

resource "twingate_resource" "docker_srv_01" {
    name = "docker-srv-01"
    address = "192.168.178.40"
    alias = "docker-srv-01.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_home.id

    security_policy_id = data.twingate_security_policy.policy_home.id

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
        for_each = [twingate_group.home.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.policy_home.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}

resource "twingate_resource" "docker_srv_02" {
    name = "docker-srv-02"
    address = "192.168.178.42"
    alias = "docker-srv-02.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_home.id

    security_policy_id = data.twingate_security_policy.policy_home.id

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
        for_each = [twingate_group.home.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.policy_home.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}

# K3s Cluster
resource "twingate_resource" "k3s_soniiit_vip" {
    name = "k3s-soniiit-vip"
    address = "192.168.178.10"
    alias = "k3s-soniiit-vip.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_home.id

    security_policy_id = data.twingate_security_policy.policy_home.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["6443"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    dynamic "access_group" {
        for_each = [twingate_group.home.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.policy_home.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}
