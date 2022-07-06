resource "aws_autoscaling_group" "stage" {
  launch_configuration = aws_launch_configuration.stage.name
  vpc_zone_identifier  = data.aws_subnets.default.ids
  target_group_arns    = [aws_lb_target_group.asg_stage.arn]
  health_check_type    = "ELB"

  name     = "asg-stage"
  min_size = var.min_size_asg
  max_size = var.max_size_asg

  tag {
    key                 = "Name"
    value               = "terraform-asg-stage"
    propagate_at_launch = true

  }
}