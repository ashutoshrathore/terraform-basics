terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region     = "us-west-2"
  access_key = var.AWS_KEY
  secret_key = var.AWS_SECRET
  default_tags {
    tags = {
      Environment = "Test"
      Owner       = "ABC"
    }
  }
}