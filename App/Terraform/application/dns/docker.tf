# Servers
resource "dns_a_record_set" "docker_srv_mgr" {
    zone = "home.soniiit.net."
    name = "docker-srv-mgr"
    addresses = [ "192.168.178.41" ]
    ttl = 3600
}

resource "dns_a_record_set" "docker_srv_01" {
    zone = "home.soniiit.net."
    name = "docker-srv-01"
    addresses = [ "192.168.178.40" ]
    ttl = 3600
}

resource "dns_a_record_set" "docker_srv_02" {
    zone = "home.soniiit.net."
    name = "docker-srv-02"
    addresses = [ "192.168.178.42" ]
    ttl = 3600
}

# Containers
resource "dns_a_record_set" "portainer_docker" {
    zone = "home.soniiit.net."
    name = "portainer-docker"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}

resource "dns_a_record_set" "dockge" {
    zone = "home.soniiit.net."
    name = "dockge"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}

resource "dns_a_record_set" "kestra" {
    zone = "home.soniiit.net."
    name = "kestra"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}
