<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.9 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | 5.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 5.2.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_yaml_validation"></a> [yaml\_validation](#module\_yaml\_validation) | ./modules/yaml_validation | n/a |

## Resources

| Name | Type |
|------|------|
| [cloudflare_dns_record.this](https://registry.terraform.io/providers/cloudflare/cloudflare/5.2.0/docs/resources/dns_record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_token"></a> [api\_token](#input\_api\_token) | Cloudflare API Token | `string` | n/a | yes |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | Cloudflare Zone ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dns_records"></a> [dns\_records](#output\_dns\_records) | The created DNS records |
<!-- END_TF_DOCS -->