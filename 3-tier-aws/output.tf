output "VPC_ID" { 
	value  = "${module.vpc.vpc_id}"
}

output "vpc_arn" { 
	value  = "${module.vpc.vpc_arn}"
}

output "public_subnets" { 
	value  = "${module.vpc.public_subnets}"
}

output "private_subnets" { 
	value = "${module.vpc.private_subnets}"
}

output "DB_dynamodb_name" { 
	value = aws_dynamodb_table.tf_notes_table.name
}

output "LB_log_bucket" { 
	value = "aws_s3_bucket.elb_logs.arn"
}

output "LB_DNS" { 
	value  = module.alb.lb_dns_name
}

output "LB_arn" { 
	value  = module.alb.lb_arn
}

output "Ec2_instance" { 
	value = data.aws_instances.sample-ec2.ids[0]
}