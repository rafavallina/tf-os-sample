terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  
  backend "s3" {
    bucket = "wishnick-terraform-state-bucket-2"
    key    = "tf-os-sample/terraform.tfstate"
    region = "us-east-2"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}

resource "aws_ssm_parameter" "foo_test" {
  name  = "foo_test"
  type  = "String"
  value = "bar "
}
