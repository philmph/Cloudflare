variable "zone_id" {
  description = "Cloudflare Zone ID"
  type        = string
}

variable "comment" {
  default     = "Managed by Terraform"
  description = "Comment for the DNS record"
  type        = string
}

variable "content" {
  description = "Content of the DNS record f.e. 10.10.10.10"
  type        = string

  validation {
    condition     = can(regex("^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$", var.content))
    error_message = "The content must be a valid IPv4 address."
  }
}

variable "name" {
  description = "Name of the DNS record f.e. example.com"
  type        = string
}

variable "priority" {
  default     = 1
  description = "Priority for the DNS record. Only relevant for MX, SRV and URI records"
  type        = number
}

variable "proxied" {
  default     = false
  description = "Set to true to use Cloudflare benefits"
  type        = bool
}

variable "tags" {
  default     = null
  description = "List of tags for the DNS record"
  type        = list(string)
}

variable "ttl" {
  default     = 1
  description = "Time to live for the DNS record"
  type        = number

  validation {
    condition     = (var.ttl >= 60 && var.ttl <= 86400) || (var.ttl == 1)
    error_message = "The TTL must be between 60 and 86400 or 1 for auto."
  }
}

variable "type" {
  description = "Type of the DNS record f.e. A, CNAME, MX, TXT, SRV, AAAA, NS"
  type        = string

  validation {
    condition     = contains(["A", "CNAME", "MX", "TXT", "SRV", "AAAA", "NS"], var.type)
    error_message = "The DNS record type must be one of A, CNAME, MX, TXT, SRV, AAAA, NS."
  }
}
