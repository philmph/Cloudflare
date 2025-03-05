locals {
  dns_records_file_name = "dns_records.yaml"
  dns_records_yaml      = file("${path.module}/${local.configurations_directory}/${local.dns_records_file_name}")
  dns_records           = yamldecode(local.dns_records_yaml)

  # dns_records_list = { for zone_id, v in local.dns_records.zones :
  #   { for i, vv in v.records :

  #   }
  # }
}
