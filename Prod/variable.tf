variable "ami_id" {
  type    = string
  default = "ami-065deacbcaac64cf2" #ami-065deacbcaac64cf2 -ubuntu ami-068257025f72f470d - ap-south
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "region" {
  type    = string
  default = "eu-central-1"
}

variable "min_size_asg" {
  default = 1
}


variable "max_size_asg" {
  default = 2
}

variable "load_balancer_type" {
  type    = string
  default = "application"
}
