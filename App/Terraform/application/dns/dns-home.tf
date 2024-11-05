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

# Hosts
resource "dns_a_record_set" "proxmox" {
    zone = "home.soniiit.net."
    name = "proxmox"
    addresses = [ "192.168.178.6" ]
    ttl = 3600
}

# Application Hosts
resource "dns_a_record_set" "app_srv_03" {
    zone = "home.soniiit.net."
    name = "app-srv-03"
    addresses = [ "192.168.178.3" ]
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

# Gameserver
resource "dns_a_record_set" "gameserver" {
    zone = "home.soniiit.net."
    name = "gameserver"
    addresses = [ "192.168.178.44" ]
    ttl = 3600
}

resource "dns_a_record_set" "gme_node1" {
    zone = "home.soniiit.net."
    name = "gme-node1"
    addresses = [ "192.168.178.80" ]
    ttl = 3600
}

# Github Agent Hosts
resource "dns_a_record_set" "github_agent_01" {
    zone = "home.soniiit.net."
    name = "github-agent-01"
    addresses = [ "192.168.178.43" ]
    ttl = 3600
}
