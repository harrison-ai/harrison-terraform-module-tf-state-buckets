terraform {

  required_version = ">= 1.0.10"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.3.0"
    }
  }
}

provider "aws" {
  region              = var.region
  profile             = var.profile
  allowed_account_ids = [var.account_id]

  default_tags {
    tags = {
      Project = var.project
      Repo    = var.repo
    }
  }

}
