terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.35.0"
        }
    }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "learn" {
    ami = "ami-011cb6d89077a2741"
    instance_type = "t2.micro"
}

# resource "aws_budgets_budget" "sai_learn" {
#   name         = "monthly-budget"
#   budget_type  = "COST"
#   limit_amount = "100"
#   limit_unit   = "INR"
#   time_unit    = "MONTHLY"
#   time_period_start = "2024-02-05_00:01"
# }