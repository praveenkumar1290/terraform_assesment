
output "alb_dns_name" {
  value       = aws_lb.lb_dev.dns_name
  description = "The domain name of the load balancer"
}

output "vpc" {
  value = data.aws_vpc.vpc.id
}

output "vpc_arn" {
  value = data.aws_vpc.vpc.arn
}

output "vpc_cidrblock" {
  value = data.aws_vpc.vpc.cidr_block
  
}

output "launch_configuration_publicip" {
 value = aws_launch_configuration.dev.associate_public_ip_address 
}

output "security_group_id" {
  value = aws_security_group.instance_dev.id
}

output "alb_security_group" {
  value = aws_security_group.alb_dev.id
}

output "aws_launch_instance" {
  value = aws_launch_configuration.dev.instance_type
}

output "aws_subnets" {
  value = data.aws_subnets.default.ids
}