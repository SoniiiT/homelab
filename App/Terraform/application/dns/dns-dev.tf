# K8s Cluster
resource "dns_a_record_set" "k8s_soniiit_vip" {
    zone = "dev.soniiit.net."
    name = "vip"
    addresses = [ "192.168.178.40" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_cp01" {
    zone = "dev.soniiit.net."
    name = "cp01"
    addresses = [ "192.168.178.43" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_cp02" {
    zone = "dev.soniiit.net."
    name = "cp02"
    addresses = [ "192.168.178.44" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_cp03" {
    zone = "dev.soniiit.net."
    name = "lb01"
    addresses = [ "192.168.178.45" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_lb01" {
    zone = "dev.soniiit.net."
    name = "lb01"
    addresses = [ "192.168.178.41" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_lb01" {
    zone = "dev.soniiit.net."
    name = "lb01"
    addresses = [ "192.168.178.42" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_w01" {
    zone = "dev.soniiit.net."
    name = "w01"
    addresses = [ "192.168.178.44" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_w02" {
    zone = "dev.soniiit.net."
    name = "w02"
    addresses = [ "192.168.178.46" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_w03" {
    zone = "dev.soniiit.net."
    name = "w03"
    addresses = [ "192.168.178.47" ]
    ttl = 3600
}

# K3s Cluster
resource "dns_a_record_set" "k3s_soniiit_vip" {
    zone = "dev.soniiit.net."
    name = "k3s-vip"
    addresses = [ "192.168.178.10" ]
    ttl = 3600
}

resource "dns_a_record_set" "k3s_soniiit_server01" {
    zone = "dev.soniiit.net."
    name = "server01"
    addresses = [ "192.168.178.11" ]
    ttl = 3600
}

resource "dns_a_record_set" "k3s_soniiit_server02" {
    zone = "dev.soniiit.net."
    name = "server02"
    addresses = [ "192.168.178.12" ]
    ttl = 3600
}

resource "dns_a_record_set" "k3s_soniiit_server03" {
    zone = "dev.soniiit.net."
    name = "node03"
    addresses = [ "192.168.178.13" ]
    ttl = 3600
}

resource "dns_a_record_set" "k3s_soniiit_agent01" {
    zone = "dev.soniiit.net."
    name = "agent01"
    addresses = [ "192.168.178.14" ]
    ttl = 3600
}

resource "dns_a_record_set" "k3s_soniiit_agent02" {
    zone = "dev.soniiit.net."
    name = "agent02"
    addresses = [ "192.168.178.15" ]
    ttl = 3600
}
resource "dns_a_record_set" "k3s_soniiit_agent02" {
    zone = "dev.soniiit.net."
    name = "agent02"
    addresses = [ "192.168.178.16" ]
    ttl = 3600
}
