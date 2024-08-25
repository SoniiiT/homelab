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

resource "dns_a_record_set" "k3s_soniiit_node01" {
    zone = "dev.soniiit.net."
    name = "node01"
    addresses = [ "192.168.178.11" ]
    ttl = 3600
}

resource "dns_a_record_set" "k3s_soniiit_node02" {
    zone = "dev.soniiit.net."
    name = "node02"
    addresses = [ "192.168.178.12" ]
    ttl = 3600
}

resource "dns_a_record_set" "k3s_soniiit_node03" {
    zone = "dev.soniiit.net."
    name = "node03"
    addresses = [ "192.168.178.13" ]
    ttl = 3600
}

resource "dns_a_record_set" "k3s_soniiit_node04" {
    zone = "dev.soniiit.net."
    name = "node04"
    addresses = [ "192.168.178.14" ]
    ttl = 3600
}
