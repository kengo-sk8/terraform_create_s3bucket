terraform {
  // Terraform本体に対するバージョン制約
  required_version = ">= 0.15"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      // Providerに対するバージョン制約
      version = "4.59.0"
    }
  }
}
