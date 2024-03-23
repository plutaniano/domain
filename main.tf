terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.42.0"
    }
  }

  backend "s3" {
    bucket = "plutaniano-terraform-states"
    key    = "domain"
    region = "sa-east-1"
  }
}

provider "aws" {
  region = "sa-east-1"
}
