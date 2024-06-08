resource "dns_a_record_set" "demo" {
    zone = "demo.soniiit.net."
    name = "demo"
    addresses = [ "192.168.178.22" ]
    ttl = 3600
}