/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:us-east-1:914735543492:environment/test-marcia-2

If the resource is no longer is accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/

resource "aws_ssm_parameter" "my_ssm_parameter" {
  name  = "my_ssm_parameter"
  type  = "String"
  value = var.environment.inputs.ssm_parameter_value
}

resource "aws_vpc" "vpc1" {
  cidr_block = "${var.environment.inputs.vpc_cidr}"
  enable_dns_support = true
  enable_dns_hostnames = true
}

resource "aws_subnet" "public_subnet_one" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "${var.environment.inputs.subnet_one_cidr}"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public_subnet_two" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "${var.environment.inputs.subnet_two_cidr}"
  map_public_ip_on_launch = true
}


