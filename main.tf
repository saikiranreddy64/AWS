terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.35.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "learn" {
  ami           = "ami-011cb6d89077a2741"
  instance_type = "t2.micro"

  tags = {
    Name        = "Learning instance"
    Environment = "Development"
    Owner       = "Sai"
    # Add more tags as required
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket        = "sai-learning"
  force_destroy = true
  versioning {
    enabled = true
  }

  tags = {
    Name        = "Sai bucket"
    Environment = "Development"
  }
}


resource "aws_budgets_budget" "Learnings" {
  name              = "Learning_budget"
  budget_type       = "COST"
  limit_amount      = "9.0"
  limit_unit        = "USD"
  time_unit         = "MONTHLY"
  time_period_start = "2024-02-05_00:01"
}