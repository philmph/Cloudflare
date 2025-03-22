variable "input" {
  description = "Variable to validate yaml schema against"
  type = object({
    dns_records = object({
      zones = list(object({
        id      = string
        comment = optional(string)
        content = string
        name    = string
        type    = string
      }))
    })
  })
}

output "output" {
  value       = var.input
  description = "Output of the yaml schema validated terraform variable"
}
