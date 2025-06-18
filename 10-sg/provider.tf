terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

    backend "s3" {
    bucket         = "expense-infra-remote-statess"
    key            = "eks-sg-state-file"
    region         = "us-east-1"
    dynamodb_table ="expense-infra-dev-table"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"

}

