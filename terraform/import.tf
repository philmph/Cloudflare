# Use this file if you want to import DNS records into state management

# data "cloudflare_dns_records" "import_helper" {
#   zone_id = var.zone_id
# }

# output "import_helper" {
#   value = [for i, o in data.cloudflare_dns_records.import_helper.result :
#     {
#       yaml = <<EOT
# - name: "${o.name}"
#   ttl: ${o.ttl}
#   type: "${o.type}"
#   content: "${o.content}"
#   ${o.priority != null ? "priority: ${o.priority}" : ""}
#   proxied: ${o.proxied}
#       EOT

#       import = <<EOT
# import {
#   to = cloudflare_dns_record.this["${o.type}-${o.name}-${base64encode(o.content)}"]
#   id = "${var.zone_id}/${o.id}"
# }
#       EOT
#     } if o.name == "pmaier.at"
#   ]
# }

# output "import_helper_2" {
#   value = [for i, o in module.yaml_validation.output.dns_records :
#     "${o.type}-${o.name}-${base64encode(o.content)}"
#   ]
# }
