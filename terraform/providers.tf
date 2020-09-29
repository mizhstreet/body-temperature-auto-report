provider "aws" {
  access_key = var.aws-access-key
  secret_key = var.aws-secret-access-key
  region     = var.aws-region

  version = "~> 3.0"
}
