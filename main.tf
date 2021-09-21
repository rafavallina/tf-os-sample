terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_ssm_parameter" "foo_test" {
  name  = "foo"
  type  = "String"
  value = "bar"
}
