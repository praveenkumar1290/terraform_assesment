
resource "aws_lb" "lb_stage" {
  name               = "terraform-asg-stage"
  load_balancer_type = var.load_balancer_type
  subnets            = data.aws_subnets.default.ids
  security_groups    = [aws_security_group.alb_stage.id]
}

resource "aws_lb_listener" "http_stage" {
  load_balancer_arn = aws_lb.lb_stage.arn
  port              = 80
  protocol          = "HTTP"

  # By default, return a simple 404 page
  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "404: page not found"
      status_code  = 404
    }
  }
}
 