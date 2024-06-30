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
    address = "*.dev.soniiit.net"
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
    alias = "tg-cn-03.dev.soniiit.net"
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

# Permanent Dev Server
resource "twingate_resource" "dev_srv_01" {
    name = "vscode"
    address = "192.168.178.90"
    alias = "vscode.dev.soniiit.net"
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

resource "twingate_resource" "dev_docker_srv" {
    name = "docker"
    address = "192.168.178.91"
    alias = "docker.dev.soniiit.net"
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

# K8s Lite Cluster
resource "twingate_resource" "k8s_lite_soniiit_cp01" {
    name = "k8s-lite-soniiit-cp01"
    address = "192.168.178.70"
    alias = "k8s-lite-soniiit-cp01.dev.soniiit.net"
    remote_network_id = twingate_remote_network.net_dev.id

    security_policy_id = data.twingate_security_policy.policy_dev.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["22", "6443"]
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
    alias = "k8s-lite-soniiit-w01.dev.soniiit.net"
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
    alias = "k8s-lite-soniiit-w02.dev.soniiit.net"
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
    alias = "k8s-lite-soniiit-nfs01.dev.soniiit.net"
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

# K8s Cluster
resource "twingate_resource" "k8s_soniiit_cp01" {
    name = "k8s-soniiit-cp01"
    address = "192.168.178.42"
    alias = "k8s-soniiit-cp01.dev.soniiit.net"
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

resource "twingate_resource" "k8s_soniiit_cp02" {
    name = "k8s-soniiit-cp02"
    address = "192.168.178.43"
    alias = "k8s-soniiit-cp02.dev.soniiit.net"
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

resource "twingate_resource" "k8s_soniiit_lb01" {
    name = "k8s-soniiit-lb01"
    address = "192.168.178.40"
    alias = "k8s-soniiit-lb01.dev.soniiit.net"
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

resource "twingate_resource" "k8s_soniiit_lb02" {
    name = "k8s-soniiit-lb02"
    address = "192.168.178.41"
    alias = "k8s-soniiit-lb02.dev.soniiit.net"
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

resource "twingate_resource" "k8s_soniiit_w01" {
    name = "k8s-soniiit-w01"
    address = "192.168.178.44"
    alias = "k8s-soniiit-w01.dev.soniiit.net"
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

resource "twingate_resource" "k8s_soniiit_w02" {
    name = "k8s-soniiit-w02"
    address = "192.168.178.45"
    alias = "k8s-soniiit-w02.dev.soniiit.net"
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

resource "twingate_resource" "k8s_soniiit_nfs01" {
    name = "k8s-soniiit-nfs01"
    address = "192.168.178.46"
    alias = "k8s-soniiit-nfs01.dev.soniiit.net"
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

resource "twingate_resource" "k8s_soniiit_nfs02" {
    name = "k8s-soniiit-nfs02"
    address = "192.168.178.47"
    alias = "k8s-soniiit-nfs02.dev.soniiit.net"
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

resource "twingate_resource" "k8s_soniiit_vip" {
    name = "k8s-soniiit-vip"
    address = "192.168.178.50"
    alias = "k8s-soniiit-vip.dev.soniiit.net"
    remote_network_id = twingate_remote_network.net_dev.id

    security_policy_id = data.twingate_security_policy.policy_dev.id

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
        for_each = [twingate_group.devops.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.policy_dev.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}