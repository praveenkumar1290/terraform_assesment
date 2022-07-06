resource "aws_launch_configuration" "example" {
  image_id                    = var.ami_id
  instance_type               = var.instance_type
  security_groups             = [aws_security_group.instance.id]
  associate_public_ip_address = true

  user_data = file("./script.sh")

  lifecycle {
    create_before_destroy = true
  }
}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}