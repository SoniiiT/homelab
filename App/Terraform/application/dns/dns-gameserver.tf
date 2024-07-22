# Vanilla | Minecraft | v1.21
resource "dns_a_record_set" "mcvanilla" {
    zone = "home.soniiit.net."
    name = "mcvanilla"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}

resource "dns_srv_record_set" "mcvanilla_tcp" {
    zone = "home.soniiit.net."
    name = "_minecraft._tcp.mcvanilla"
    srv {
    priority = 0
    weight   = 0
    target   = "mcvanilla.home.soniiit.net."
    port     = 27000
    }
    ttl = 3600
}
