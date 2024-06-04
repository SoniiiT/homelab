# Remote Network
resource "twingate_remote_network" "net_prod_01" {
    name = "net_prod_01"
    location = "ON_PREMISE"
}

# Security Policy
data "twingate_security_policy" "Default_Policy" {
    name = "Default Policy"
}

# Groups
resource "twingate_group" "admin" {
    name = "admin"
}

# Resources
# Wildcard DNS
resource "twingate_resource" "wildcard_dns_home" {
    name = "Wildcard Home"
    address = "*.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_prod_01.id

    security_policy_id = data.twingate_security_policy.Default_Policy.id

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
        for_each = [twingate_group.admin.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.Default_Policy.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}

resource "twingate_resource" "wildcard_dns_dev" {
    name = "Wildcard Dev"
    address = "*.dev.soniiit.net"
    remote_network_id = twingate_remote_network.net_prod_01.id

    security_policy_id = data.twingate_security_policy.Default_Policy.id

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
        for_each = [twingate_group.admin.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.Default_Policy.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}

resource "twingate_resource" "wildcard_dns_demo" {
    name = "Wildcard Demo"
    address = "*.demo.soniiit.net"
    remote_network_id = twingate_remote_network.net_prod_01.id

    security_policy_id = data.twingate_security_policy.Default_Policy.id

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
        for_each = [twingate_group.admin.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.Default_Policy.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}

# Host Servers
resource "twingate_resource" "pve_srv_01" {
    name = "pve-srv-01"
    address = "192.168.178.10"
    alias = "proxmox.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_prod_01.id

    security_policy_id = data.twingate_security_policy.Default_Policy.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["22", "8006"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    dynamic "access_group" {
        for_each = [twingate_group.admin.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.Default_Policy.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}

# Application Servers
resource "twingate_resource" "app_srv_01" {
    name = "app-srv-01"
    address = "192.168.178.30"
    alias = "app-srv-01.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_prod_01.id

    security_policy_id = data.twingate_security_policy.Default_Policy.id

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
        for_each = [twingate_group.admin.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.Default_Policy.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}

resource "twingate_resource" "app_srv_02" {
    name = "app-srv-02"
    address = "192.168.178.4"
    alias = "app-srv-02.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_prod_01.id

    security_policy_id = data.twingate_security_policy.Default_Policy.id

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
        for_each = [twingate_group.admin.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.Default_Policy.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}

resource "twingate_resource" "app_srv_03" {
    name = "app-srv-03"
    address = "192.168.178.31"
    alias = "app-srv-03.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_prod_01.id

    security_policy_id = data.twingate_security_policy.Default_Policy.id

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
        for_each = [twingate_group.admin.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.Default_Policy.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}

resource "twingate_resource" "app_srv_04" {
    name = "app-srv-04"
    address = "192.168.178.32"
    alias = "app-srv-04.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_prod_01.id

    security_policy_id = data.twingate_security_policy.Default_Policy.id

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
        for_each = [twingate_group.admin.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.Default_Policy.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}

resource "twingate_resource" "app_srv_05" {
    name = "app-srv-05"
    address = "192.168.178.33"
    alias = "app-srv-05.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_prod_01.id

    security_policy_id = data.twingate_security_policy.Default_Policy.id

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
        for_each = [twingate_group.admin.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.Default_Policy.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}

resource "twingate_resource" "app_srv_06" {
    name = "app-srv-06"
    address = "192.168.178.3"
    alias = "app-srv-06.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_prod_01.id

    security_policy_id = data.twingate_security_policy.Default_Policy.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["22", "53"]
        }
        udp = {
            policy = "RESTRICTED"
            ports = ["53"]
        }
    }

    dynamic "access_group" {
        for_each = [twingate_group.admin.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.Default_Policy.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}

# Docker Servers
resource "twingate_resource" "docker_srv_mgm" {
    name = "docker-srv-mgm"
    address = "192.168.178.20"
    alias = "docker-srv-mgm.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_prod_01.id

    security_policy_id = data.twingate_security_policy.Default_Policy.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["22","53"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    dynamic "access_group" {
        for_each = [twingate_group.admin.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.Default_Policy.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}

resource "twingate_resource" "docker_srv_01" {
    name = "docker-srv-01"
    address = "192.168.178.21"
    alias = "docker-srv-01.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_prod_01.id

    security_policy_id = data.twingate_security_policy.Default_Policy.id

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
        for_each = [twingate_group.admin.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.Default_Policy.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}

resource "twingate_resource" "docker_srv_02" {
    name = "docker-srv-02"
    address = "192.168.178.22"
    alias = "docker-srv-02.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_prod_01.id

    security_policy_id = data.twingate_security_policy.Default_Policy.id

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
        for_each = [twingate_group.admin.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.Default_Policy.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}