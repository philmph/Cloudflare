<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0, < 2.0.0 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_input"></a> [input](#input\_input) | Variable to validate yaml schema against | <pre>object({<br/>    dns_records = list(object({<br/>      name     = string<br/>      ttl      = optional(number, 1)<br/>      type     = string<br/>      comment  = optional(string, "Managed by Terraform")<br/>      content  = optional(string)<br/>      priority = optional(number)<br/>      proxied  = optional(bool, false)<br/>      tags     = optional(list(string))<br/>    }))<br/>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_output"></a> [output](#output\_output) | Output of the yaml schema validated terraform variable |
<!-- END_TF_DOCS -->