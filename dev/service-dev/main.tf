terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "wishnick-terraform-states"
    key    = "tf-os-sample/service-dev/terraform.tfstate"
    region = "us-west-2"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}

resource "aws_ssm_parameter" "service_ssm_param" {
  name  = "service_ssm_param"
  type  = "String"
  value = "value_2"
}
