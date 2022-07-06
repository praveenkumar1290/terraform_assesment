
resource "aws_lb_listener_rule" "asg_dev" {
  listener_arn = aws_lb_listener.http_dev.arn
  priority     = 100

  condition {
    path_pattern {
      values = ["*"]
    }
  }

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.asg_dev.arn
  }
}
 