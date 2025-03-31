resource "cloudflare_dns_record" "this" {
  # zone_id = var.zone_id
  # comment = "Domain verification record"
  # content = "198.51.100.4"
  # name = "example.com"
  # proxied = true
  # settings = {
  #   ipv4_only = true
  #   ipv6_only = true
  # }
  # tags = ["owner:dns-team"]
  # ttl = 3600
  # type = "A"

  # Required
  name = var.name
  ttl = var.ttl
  type = var.type
  zone_id = var.zone_id

  # Optional
  comment =
}
