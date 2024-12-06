# Virtual IP
resource "dns_a_record_set" "k3s_soniiit_vip" {
    zone = "home.soniiit.net."
    name = "k3s-soniiit-vip"
    addresses = [ "192.168.178.10" ]
    ttl = 3600
}

# Servers
resource "dns_a_record_set" "k3s_soniiit_server01" {
    zone = "home.soniiit.net."
    name = "k3s-soniiit-server01"
    addresses = [ "192.168.178.11" ]
    ttl = 3600
}

resource "dns_a_record_set" "k3s_soniiit_server02" {
    zone = "home.soniiit.net."
    name = "k3s-soniiit-server02"
    addresses = [ "192.168.178.12" ]
    ttl = 3600
}

# Agents
resource "dns_a_record_set" "k3s_soniiit_agent01" {
    zone = "home.soniiit.net."
    name = "k3s-soniiit-agent01"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

resource "dns_a_record_set" "k3s_soniiit_agent02" {
    zone = "home.soniiit.net."
    name = "k3s-soniiit-agent02"
    addresses = [ "192.168.178.21" ]
    ttl = 3600
}

# Containers
resource "dns_a_record_set" "traefik" {
    zone = "home.soniiit.net."
    name = "traefik"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}

resource "dns_a_record_set" "nginx" {
    zone = "home.soniiit.net."
    name = "nginx"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}

resource "dns_a_record_set" "portainer" {
    zone = "home.soniiit.net."
    name = "portainer"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}

resource "dns_a_record_set" "homepage" {
    zone = "home.soniiit.net."
    name = "homepage"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}

resource "dns_a_record_set" "prometheus" {
    zone = "home.soniiit.net."
    name = "prometheus"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}

resource "dns_a_record_set" "grafana" {
    zone = "home.soniiit.net."
    name = "grafana"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}

resource "dns_a_record_set" "alertmanager" {
    zone = "home.soniiit.net."
    name = "alertmanager"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}

resource "dns_a_record_set" "longhorn" {
    zone = "home.soniiit.net."
    name = "longhorn"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}

resource "dns_a_record_set" "graylog" {
    zone = "home.soniiit.net."
    name = "graylog"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}

resource "dns_a_record_set" "zabbix" {
    zone = "home.soniiit.net."
    name = "zabbix"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}

resource "dns_a_record_set" "uptimekuma" {
    zone = "home.soniiit.net."
    name = "uptimekuma"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}

resource "dns_a_record_set" "rabbitmq" {
    zone = "home.soniiit.net."
    name = "rabbitmq"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}

resource "dns_a_record_set" "bitwarden" {
    zone = "home.soniiit.net."
    name = "bitwarden"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}
