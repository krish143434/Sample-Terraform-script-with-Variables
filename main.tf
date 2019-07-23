provider "aws" {
  version    = "~> 2.0"
  region     = "${var.region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_access_key}"
}

resource "aws_vpc" "vpc" {
    cidr_block = "${lookup(var.vpc,"cidr")}"
    tags       = {
        Name        = "${lookup(var.vpc, "name")}"
        Terraformed = "True"
        Environment = "${var.environment}"
    }
}

resource "aws_subnet" "subnet" {
  count      = "${length(var.subnets)}"
  vpc_id     = "${aws_vpc.vpc.id}"
  cidr_block = "${lookup(var.subnets[count.index],"cidr")}"
  tags = {
    Name        = "${lookup(var.subnets[count.index], "name")}"
    Terraformed = "True"
    Environment = "${var.environment}"
  }
}

