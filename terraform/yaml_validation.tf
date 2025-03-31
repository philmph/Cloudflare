locals {
  yaml_path     = "${path.root}/configuration"
  yaml_filename = "dns_records.yaml"
  yaml_data     = yamldecode(file("${local.yaml_path}/${local.yaml_filename}"))

  # Needs a unique TF based ID because no identifier exists besides "content" which
  # can be a wall of text
  yaml_validated = { for i, o in module.yaml_validation.output.dns_records :
    "${o.type}-${o.name}-${base64encode(o.content)}" => o
  }
}

module "yaml_validation" {
  source = "./modules/yaml_validation"

  input = local.yaml_data
}
