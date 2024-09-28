# Virtual IP
# resource "dns_a_record_set" "k3s_soniiit_vip" {
#     zone = "home.soniiit.net."
#     name = "k3s-soniiit-vip"
#     addresses = [ "192.168.178.10" ]
#     ttl = 3600
# }

# # Servers
# resource "dns_a_record_set" "k3s_soniiit_server01" {
#     zone = "home.soniiit.net."
#     name = "k3s-soniiit-server01"
#     addresses = [ "192.168.178.11" ]
#     ttl = 3600
# }

# resource "dns_a_record_set" "k3s_soniiit_server02" {
#     zone = "home.soniiit.net."
#     name = "k3s-soniiit-server02"
#     addresses = [ "192.168.178.12" ]
#     ttl = 3600
# }

# resource "dns_a_record_set" "k3s_soniiit_server03" {
#     zone = "home.soniiit.net."
#     name = "k3s-soniiit-server01"
#     addresses = [ "192.168.178.13" ]
#     ttl = 3600
# }

# # Agents
# resource "dns_a_record_set" "k3s_soniiit_agent01" {
#     zone = "home.soniiit.net."
#     name = "k3s-soniiit-agent01"
#     addresses = [ "192.168.178.14" ]
#     ttl = 3600
# }

# resource "dns_a_record_set" "k3s_soniiit_agent02" {
#     zone = "home.soniiit.net."
#     name = "k3s-soniiit-agent01"
#     addresses = [ "192.168.178.15" ]
#     ttl = 3600
# }

# resource "dns_a_record_set" "k3s_soniiit_agent03" {
#     zone = "home.soniiit.net."
#     name = "k3s-soniiit-agent03"
#     addresses = [ "192.168.178.16" ]
#     ttl = 3600
# }

# Containers
resource "dns_a_record_set" "traefik" {
    zone = "home.soniiit.net."
    name = "traefik"
    addresses = [ "192.168.178.24" ]
    ttl = 3600
}

resource "dns_a_record_set" "nginx" {
    zone = "home.soniiit.net."
    name = "nginx"
    addresses = [ "192.168.178.24" ]
    ttl = 3600
}
