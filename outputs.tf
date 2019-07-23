output "vpc_arn" {
    value = "${aws_vpc.vpc.arn}"
}

output "vpc_id" {
  value = "${aws_vpc.vpc.id}"
}

output "subnet_ids" {
  value = "${aws_subnet.subnet.*.id}"
}