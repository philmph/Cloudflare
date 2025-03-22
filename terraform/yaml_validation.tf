locals {
  yaml_path     = "${path.root}/configuration"
  yaml_filename = "dns_records.yaml"
  yaml_data     = yamldecode(file("${local.yaml_path}/${local.yaml_filename}"))

  yaml_validated = { for i, o in module.module.yaml_validation.output.dns_records.zones :
    o.id => o
  }
}

module "yaml_validation" {
  source = "./modules/yaml_validation"

  input = local.yaml_data
}
