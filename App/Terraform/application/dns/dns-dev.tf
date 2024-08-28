# K8s Cluster
resource "dns_a_record_set" "k8s_soniiit_vip" {
    zone = "dev.soniiit.net."
    name = "k8s-soniiit-vip"
    addresses = [ "192.168.178.40" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_cp01" {
    zone = "dev.soniiit.net."
    name = "k8s-soniiit-cp01"
    addresses = [ "192.168.178.43" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_cp02" {
    zone = "dev.soniiit.net."
    name = "k8s-soniiit-cp02"
    addresses = [ "192.168.178.44" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_cp03" {
    zone = "dev.soniiit.net."
    name = "k8s-soniiit-cp03"
    addresses = [ "192.168.178.45" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_lb01" {
    zone = "dev.soniiit.net."
    name = "k8s-soniiit-lb01"
    addresses = [ "192.168.178.41" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_lb02" {
    zone = "dev.soniiit.net."
    name = "k8s-soniiit-lb02"
    addresses = [ "192.168.178.42" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_w01" {
    zone = "dev.soniiit.net."
    name = "k8s-soniiit-w01"
    addresses = [ "192.168.178.46" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_w02" {
    zone = "dev.soniiit.net."
    name = "k8s-soniiit-w02"
    addresses = [ "192.168.178.47" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_w03" {
    zone = "dev.soniiit.net."
    name = "k8s-soniiit-w03"
    addresses = [ "192.168.178.48" ]
    ttl = 3600
}

# K3s Cluster
resource "dns_a_record_set" "k3s_soniiit_vip" {
    zone = "dev.soniiit.net."
    name = "k3s-soniiit-vip"
    addresses = [ "192.168.178.10" ]
    ttl = 3600
}

resource "dns_a_record_set" "k3s_soniiit_server01" {
    zone = "dev.soniiit.net."
    name = "k3s-soniiit-server01"
    addresses = [ "192.168.178.11" ]
    ttl = 3600
}

resource "dns_a_record_set" "k3s_soniiit_server02" {
    zone = "dev.soniiit.net."
    name = "k3s-soniiit-server02"
    addresses = [ "192.168.178.12" ]
    ttl = 3600
}

resource "dns_a_record_set" "k3s_soniiit_server03" {
    zone = "dev.soniiit.net."
    name = "k3s-soniiit-server03"
    addresses = [ "192.168.178.13" ]
    ttl = 3600
}

resource "dns_a_record_set" "k3s_soniiit_agent01" {
    zone = "dev.soniiit.net."
    name = "k3s-soniiit-agent01"
    addresses = [ "192.168.178.14" ]
    ttl = 3600
}

resource "dns_a_record_set" "k3s_soniiit_agent02" {
    zone = "dev.soniiit.net."
    name = "k3s-soniiit-agent02"
    addresses = [ "192.168.178.15" ]
    ttl = 3600
}
resource "dns_a_record_set" "k3s_soniiit_agent03" {
    zone = "dev.soniiit.net."
    name = "k3s-soniiit-agent03"
    addresses = [ "192.168.178.16" ]
    ttl = 3600
}
