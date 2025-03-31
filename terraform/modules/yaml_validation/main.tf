variable "input" {
  description = "Variable to validate yaml schema against"
  type = object({
    dns_records = list(object({
      name     = string
      ttl      = optional(number, 1)
      type     = string
      comment  = optional(string, "Managed by Terraform")
      content  = optional(string)
      priority = optional(number)
      proxied  = optional(bool, false)
      tags     = optional(list(string))
    }))
  })
}

output "output" {
  value       = var.input
  description = "Output of the yaml schema validated terraform variable"
}
