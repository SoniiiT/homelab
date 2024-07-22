# Vanilla | Minecraft | v1.21
resource "dns_a_record_set" "mc_vanilla_121" {
    zone = "home.soniiit.net."
    name = "mc-121"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}

resource "dns_srv_record_set" "mc_121_tcp" {
    zone = "home.soniiit.net."
    name = "_minecraft._tcp"
    srv {
    priority = 0
    weight   = 0
    target   = "mc-121.home.soniiit.net."
    port     = 27000
    }
    ttl = 300
}
