plugin "terraform" {
  enabled = true
  preset  = "all"

  version = "0.14.1"
  source  = "github.com/terraform-linters/tflint-ruleset-terraform"
}
