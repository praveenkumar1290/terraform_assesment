
output "alb_dns_name" {
  value       = aws_lb.lb_stage.dns_name
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

