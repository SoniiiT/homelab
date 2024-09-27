# Containers
resource "dns_a_record_set" "traefik" {
    zone = "home.soniiit.net."
    name = "traefik"
    addresses = [ "192.168.178.24" ]
    ttl = 3600
}
