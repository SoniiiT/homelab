# Servers
resource "dns_a_record_set" "docker_srv_mgr" {
    zone = "home.soniiit.net."
    name = "docker-srv-mgr"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

resource "dns_a_record_set" "docker_srv_01" {
    zone = "home.soniiit.net."
    name = "docker-srv-01"
    addresses = [ "192.168.178.21" ]
    ttl = 3600
}

resource "dns_a_record_set" "docker_srv_02" {
    zone = "home.soniiit.net."
    name = "docker-srv-02"
    addresses = [ "192.168.178.22" ]
    ttl = 3600
}

resource "dns_a_record_set" "docker_srv_03" {
    zone = "home.soniiit.net."
    name = "docker-srv-03"
    addresses = [ "192.168.178.40" ]
    ttl = 3600
}

# Containers
resource "dns_a_record_set" "traefik_mgr" {
    zone = "home.soniiit.net."
    name = "traefik-mgr"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

resource "dns_a_record_set" "traefik_01" {
    zone = "home.soniiit.net."
    name = "traefik-01"
    addresses = [ "192.168.178.21" ]
    ttl = 3600
}

resource "dns_a_record_set" "traefik_02" {
    zone = "home.soniiit.net."
    name = "traefik-02"
    addresses = [ "192.168.178.22" ]
    ttl = 3600
}

resource "dns_a_record_set" "kestra" {
    zone = "home.soniiit.net."
    name = "kestra"
    addresses = [ "192.168.178.21" ]
    ttl = 3600
}

resource "dns_a_record_set" "dockge" {
    zone = "home.soniiit.net."
    name = "dockge"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

resource "dns_a_record_set" "homepage" {
    zone = "home.soniiit.net."
    name = "homepage"
    addresses = [ "192.168.178.21" ]
    ttl = 3600
}

resource "dns_a_record_set" "uptimekuma" {
    zone = "home.soniiit.net."
    name = "uptime"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}
