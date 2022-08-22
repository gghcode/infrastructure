terraform {
  required_version = "1.1.7"

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "gghcodelab"

    workspaces {
      name = "aws-apne2-ecr"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.70.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}
