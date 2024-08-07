#Permanent Dev Server
resource "dns_a_record_set" "dev_srv_01" {
    zone = "dev.soniiit.net."
    name = "dev-srv-01"
    addresses = [ "192.168.178.90" ]
    ttl = 3600
}

resource "dns_a_record_set" "dev_docker_srv" {
    zone = "dev.soniiit.net."
    name = "dev-docker-srv"
    addresses = [ "192.168.178.91" ]
    ttl = 3600
}

# Windows Hosts
resource "dns_a_record_set" "hyperv_srv_01" {
    zone = "dev.soniiit.net."
    name = "hyperv-srv-01"
    addresses = [ "192.168.178.60" ]
    ttl = 3600
}

resource "dns_a_record_set" "hyperv_srv_02" {
    zone = "dev.soniiit.net."
    name = "hyperv-srv-02"
    addresses = [ "192.168.178.61" ]
    ttl = 3600
}

# Kubernetes Hosts
resource "dns_a_record_set" "k8s_soniiit_lb01" {
    zone = "dev.soniiit.net."
    name = "k8s-soniiit-lb01"
    addresses = [ "192.168.178.40" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_lb02" {
    zone = "dev.soniiit.net."
    name = "k8s-soniiit-lb02"
    addresses = [ "192.168.178.41" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_cp01" {
    zone = "dev.soniiit.net."
    name = "k8s-soniiit-cp01"
    addresses = [ "192.168.178.42" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_cp02" {
    zone = "dev.soniiit.net."
    name = "k8s-soniiit-cp02"
    addresses = [ "192.168.178.43" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_w01" {
    zone = "dev.soniiit.net."
    name = "k8s-soniiit-w01"
    addresses = [ "192.168.178.44" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_w02" {
    zone = "dev.soniiit.net."
    name = "k8s-soniiit-w02"
    addresses = [ "192.168.178.45" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_nfs01" {
    zone = "dev.soniiit.net."
    name = "k8s-soniiit-nfs01"
    addresses = [ "192.168.178.46" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_nfs02" {
    zone = "dev.soniiit.net."
    name = "k8s-soniiit-nfs02"
    addresses = [ "192.168.178.47" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_vip" {
    zone = "dev.soniiit.net."
    name = "k8s-soniiit-vip"
    addresses = [ "192.168.178.50" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_lite_soniiit_cp01" {
    zone = "dev.soniiit.net."
    name = "k8s-lite-soniiit-cp01"
    addresses = [ "192.168.178.70" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_lite_soniiit_w01" {
    zone = "dev.soniiit.net."
    name = "k8s-lite-soniiit-w01"
    addresses = [ "192.168.178.71" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_lite_soniiit_w02" {
    zone = "dev.soniiit.net."
    name = "k8s-lite-soniiit-w02"
    addresses = [ "192.168.178.72" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_lite_soniiit_nfs01" {
    zone = "dev.soniiit.net."
    name = "k8s-lite-soniiit-nfs01"
    addresses = [ "192.168.178.73" ]
    ttl = 3600
}

resource "dns_a_record_set" "k8s_soniiit_ceph" {
    zone = "dev.soniiit.net."
    name = "ceph"
    addresses = [ "192.168.178.46" ]
    ttl = 3600
}
