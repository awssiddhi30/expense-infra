terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
 
  } 
 
  backend "s3" {
    bucket = "daws30-s3-dev"
    key    = "expense-sg" # you should have unique keys with in the bucket, same key should not be used in other repos or tf projects
    region = "us-east-1"
    dynamodb_table = "dynamodb-tf-remote-dev"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}