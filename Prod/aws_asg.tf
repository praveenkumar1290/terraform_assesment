resource "aws_autoscaling_group" "example" {
  launch_configuration = aws_launch_configuration.example.name
  vpc_zone_identifier  = data.aws_subnets.default.ids
  target_group_arns    = [aws_lb_target_group.asg.arn]
  health_check_type    = "ELB"

  name     = "asg"
  min_size = var.min_size_asg
  max_size = var.max_size_asg

  tag {
    key                 = "Name"
    value               = "terraform-asg-example"
    propagate_at_launch = true

  }
}