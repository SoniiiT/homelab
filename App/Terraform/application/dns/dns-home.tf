# Home Network
resource "dns_a_record_set" "gw_01" {
    zone = "home.soniiit.net."
    name = "gw-01"
    addresses = [ "192.168.178.1" ]
    ttl = 3600
}

resource "dns_a_record_set" "gw_02" {
    zone = "home.soniiit.net."
    name = "gw-02"
    addresses = [ "192.168.178.2" ]
    ttl = 3600
}

resource "dns_a_record_set" "sw_01" {
    zone = "home.soniiit.net."
    name = "sw-01"
    addresses = [ "192.168.178.210" ]
    ttl = 3600
}

resource "dns_a_record_set" "truenas" {
    zone = "home.soniiit.net."
    name = "truenas"
    addresses = [ "192.168.178.8" ]
    ttl = 3600
}

# Hosts
resource "dns_a_record_set" "proxmox" {
    zone = "home.soniiit.net."
    name = "proxmox"
    addresses = [ "192.168.178.6" ]
    ttl = 3600
}


resource "dns_a_record_set" "app_srv_03" {
    zone = "home.soniiit.net."
    name = "app-srv-03"
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

resource "dns_a_record_set" "memos" {
    zone = "home.soniiit.net."
    name = "memos"
    addresses = [ "192.168.178.21" ]
    ttl = 3600
}

resource "dns_a_record_set" "planka" {
    zone = "home.soniiit.net."
    name = "planka"
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

resource "dns_a_record_set" "fireshare" {
    zone = "home.soniiit.net."
    name = "fireshare"
    addresses = [ "192.168.178.22" ]
    ttl = 3600
}

# Application Hosts
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

# Twingate Connector Hosts
resource "dns_a_record_set" "twingate_connector_01" {
    zone = "home.soniiit.net."
    name = "tg-cn-01"
    addresses = [ "192.168.178.7" ]
    ttl = 3600
}

resource "dns_a_record_set" "twingate_connector_02" {
    zone = "home.soniiit.net."
    name = "tg-cn-02"
    addresses = [ "192.168.178.31" ]
    ttl = 3600
}

# Gameserver
resource "dns_a_record_set" "gameserver" {
    zone = "home.soniiit.net."
    name = "gameserver"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}

resource "dns_a_record_set" "node1" {
    zone = "home.soniiit.net."
    name = "gme-node1"
    addresses = [ "192.168.178.80" ]
    ttl = 3600
}

# Github Agent Hosts
resource "dns_a_record_set" "github_agent_01" {
    zone = "home.soniiit.net."
    name = "github-agent-01"
    addresses = [ "192.168.178.34" ]
    ttl = 3600
}
