/* 

module "http_server_sg" {
  source = "terraform-aws-modules/security-group/aws//modules/https-443"

  name        = "sample-web-server"
  description = "sample Security group for web-server with HTTP ports open within VPC"
  vpc_id      = "${module.vpc.vpc_id}"

  ingress_cidr_blocks = ["10.1.0.0/16"]
}


module "https_server_sg" {
  source = "terraform-aws-modules/security-group/aws//modules/http-80"

  name        = "sample-web-server"
  description = "sample Security group for web-server with HTTP ports open within VPC"
  vpc_id      = "${module.vpc.vpc_id}"

  ingress_cidr_blocks = ["10.1.0.0/16"]
}

output "https_security_group_id" {
	value = "${module.https_server_sg.security_group_id}"
}

output "http_security_group_id" {
	value = "${module.http_server_sg.security_group_id}"

}
*/

resource "aws_security_group" "lb_sg" {
  name        = "sample-lb_http_https"
  description = "Allow http inbound traffic"
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${var.cidr}"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["${var.cidr}"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  tags = {
    Name = "sample-tf-lb-sg"
  }
}

resource "aws_security_group" "ec2_sg" {
  name        = "sample-ec2_ssh_http"
  description = "Allow http and SSH inbound traffic"
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.cidr}"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["${var.cidr}"]
  }

 ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "all"
    security_groups = ["${aws_security_group.lb_sg.id}"]
  }

  egress {
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  tags = {
    Name = "sample-tf-ec2-sg"
  }
}


resource "aws_security_group" "db_sg" {
  name        = "sample-ec2_db_mysql"
  description = "Allow mysql inbound traffic"
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["${var.cidr}"]
  }

 ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "all"
    security_groups = ["${aws_security_group.ec2_sg.id}"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  tags = {
    Name = "sample-tf-db-sg"
  }
}