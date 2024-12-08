terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.80.0"
    }
  }
  backend "s3" {
    bucket = "hemanth78s-remote-state"
    key    = "expense-dev-db"
    region = "us-east-1"
    dynamodb_table = "hemanth78s-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}