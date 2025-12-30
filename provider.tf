provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
  }
}

provider "vault" {
  address = "http://vault-internal.shamidevops.online:8200"
  token   = var.token
}