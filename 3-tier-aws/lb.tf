
data "aws_instances" "sample-ec2" {
  instance_tags = {
    Name = "sample-asg"
  }

  instance_state_names = ["running", "stopped"]

  // depends_on = [ module.asg ] 
}

output ids {
    value = data.aws_instances.sample-ec2.ids
}


module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "~> 8.0"

  name = "sample-alb"

  load_balancer_type = "application"

  vpc_id             = "${module.vpc.vpc_id}"
  subnets            = "${module.vpc.private_subnets}"
  security_groups    = ["${aws_security_group.lb_sg.id}"]

  access_logs = {
    bucket = "sample-jayeshm-logs"
  }

  target_groups = [
    {
     name_prefix      = "pref-"
      backend_protocol = "HTTP"
      backend_port     = 80
      target_type      = "instance"
      targets = {
        my_target = {
          target_id = "${data.aws_instances.sample-ec2.ids[0]}"
          port = 80
        }
      }
    }
  ]

/* COMMENTS for other data 

  target_groups = [
    {
     name_prefix      = "pref-"
      backend_protocol = "HTTP"
      backend_port     = 80
      target_type      = "instance"
      targets = {
        my_target = {
          target_id = "${data.aws_instances.sample-ec2.ids[0]}"
          port = 80
        }
        my_other_target = {
          target_id = "${data.aws_instances.sample-ec2.ids[0]}"
          port = 8080
        }
      }
    }
  ]

*/

  https_listeners = [
    {
      port               = 443
      protocol           = "HTTPS"
      certificate_arn    = "arn:aws:acm:us-east-1:642624058809:certificate/5a6d0608-9268-4f40-ad39-0205cbfab5f7"
      target_group_index = 0
    }
  ]

  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      target_group_index = 0
    }
  ]

  tags = {
    Environment = "Test"
  }
}
