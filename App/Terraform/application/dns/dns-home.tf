# Home Network
resource "dns_a_record_set" "drucker_iris" {
    zone = "home.soniiit.net."
    name = "drucker-iris"
    addresses = [ "192.168.178.202" ]
    ttl = 3600
}

resource "dns_a_record_set" "drucker_wz" {
    zone = "home.soniiit.net."
    name = "drucker-wz"
    addresses = [ "192.168.178.201" ]
    ttl = 3600
}

# Hosts
resource "dns_a_record_set" "pve_srv_01" {
    zone = "home.soniiit.net."
    name = "pve-srv-01"
    addresses = [ "192.168.178.10" ]
    ttl = 3600
}

resource "dns_a_record_set" "proxmox" {
    zone = "home.soniiit.net."
    name = "proxmox"
    addresses = [ "192.168.178.10" ]
    ttl = 3600
}

# Application Hosts
resource "dns_a_record_set" "app_srv_01" {
    zone = "home.soniiit.net."
    name = "app-srv-01"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}

resource "dns_a_record_set" "gameserver" {
    zone = "home.soniiit.net."
    name = "gameserver"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}

resource "dns_a_record_set" "app_srv_02" {
    zone = "home.soniiit.net."
    name = "app-srv-02"
    addresses = [ "192.168.178.4" ]
    ttl = 3600
}

resource "dns_a_record_set" "lancache" {
    zone = "home.soniiit.net."
    name = "lancache"
    addresses = [ "192.168.178.4" ]
    ttl = 3600
}

resource "dns_a_record_set" "app_srv_03" {
    zone = "home.soniiit.net."
    name = "app-srv-03"
    addresses = [ "192.168.178.31" ]
    ttl = 3600
}

resource "dns_a_record_set" "app_srv_04" {
    zone = "home.soniiit.net."
    name = "app-srv-04"
    addresses = [ "192.168.178.32" ]
    ttl = 3600
}

resource "dns_a_record_set" "app_srv_05" {
    zone = "home.soniiit.net."
    name = "app-srv-05"
    addresses = [ "192.168.178.33" ]
    ttl = 3600
}

resource "dns_a_record_set" "app_srv_06" {
    zone = "home.soniiit.net."
    name = "app-srv-06"
    addresses = [ "192.168.178.3" ]
    ttl = 3600
}

resource "dns_a_record_set" "dns" {
    zone = "home.soniiit.net."
    name = "dns"
    addresses = [ "192.168.178.3" ]
    ttl = 3600
}

# Docker Hosts
resource "dns_a_record_set" "docker_srv_mgm" {
    zone = "home.soniiit.net."
    name = "docker-srv-mgm"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

resource "dns_a_record_set" "docker_srv_01" {
    zone = "home.soniiit.net."
    name = "docker-srv-01"
    addresses = [ "192.168.178.21" ]
    ttl = 3600
}

resource "dns_a_record_set" "wild_docker_srv-01" {
    zone = "home.soniiit.net."
    name = "*.docker-srv-01"
    addresses = [ "192.168.178.21" ]
    ttl = 3600
}

resource "dns_a_record_set" "docker_srv_02" {
    zone = "home.soniiit.net."
    name = "docker-srv-02"
    addresses = [ "192.168.178.22" ]
    ttl = 3600
}

resource "dns_a_record_set" "wild_docker_srv-02" {
    zone = "home.soniiit.net."
    name = "*.docker-srv-02"
    addresses = [ "192.168.178.22" ]
    ttl = 3600
}

# Docker Containers on docker-srv-mgm
resource "dns_a_record_set" "portainer" {
    zone = "home.soniiit.net."
    name = "portainer"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

resource "dns_a_record_set" "dockge" {
    zone = "home.soniiit.net."
    name = "dockge"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

resource "dns_a_record_set" "uptime" {
    zone = "home.soniiit.net."
    name = "uptime"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

resource "dns_a_record_set" "traefik_mgm" {
    zone = "home.soniiit.net."
    name = "traefik-mgm"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

# Docker Containers on docker-srv-01
resource "dns_a_record_set" "authentik" {
    zone = "home.soniiit.net."
    name = "authentik"
    addresses = [ "192.168.178.21" ]
    ttl = 3600
}

resource "dns_a_record_set" "homeassistant" {
    zone = "home.soniiit.net."
    name = "homeassistant"
    addresses = [ "192.168.178.21" ]
    ttl = 3600
}

resource "dns_a_record_set" "homepage" {
    zone = "home.soniiit.net."
    name = "homepage"
    addresses = [ "192.168.178.21" ]
    ttl = 3600
}

resource "dns_a_record_set" "kestra" {
    zone = "home.soniiit.net."
    name = "kestra"
    addresses = [ "192.168.178.21" ]
    ttl = 3600
}

resource "dns_a_record_set" "traefik_01" {
    zone = "home.soniiit.net."
    name = "traefik-01"
    addresses = [ "192.168.178.21" ]
    ttl = 3600
}

# Docker Containers on docker-srv-02
resource "dns_a_record_set" "traefik_02" {
    zone = "home.soniiit.net."
    name = "traefik-02"
    addresses = [ "192.168.178.22" ]
    ttl = 3600
}