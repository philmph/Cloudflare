resource "cloudflare_dns_record" "this" {
  for_each = local.yaml_validated

  zone_id = var.zone_id

  # Required
  name = each.value.name
  ttl  = each.value.ttl
  type = each.value.type

  # Optional
  comment  = each.value.comment
  content  = each.value.content
  priority = each.value.priority
  proxied  = each.value.proxied
  tags     = each.value.tags
}
