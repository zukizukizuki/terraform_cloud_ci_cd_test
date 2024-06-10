terraform {
  required_version = "~> 1.8.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  cloud {
    organization = "zu"

    workspaces {
      name = "stg"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

