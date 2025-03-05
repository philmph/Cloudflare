terraform {
  # TODO: Tofu pin == Terraform pin param?
  required_version = ""

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "5.1.0"
    }
  }
}
