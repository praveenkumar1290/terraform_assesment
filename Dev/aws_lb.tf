
resource "aws_lb" "lb_dev" {
  name               = "terraform-asg-dev"
  load_balancer_type = var.load_balancer_type
  subnets            = data.aws_subnets.default.ids
  security_groups    = [aws_security_group.alb_dev.id]
}

resource "aws_lb_listener" "http_dev" {
  load_balancer_arn = aws_lb.lb_dev.arn
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
 