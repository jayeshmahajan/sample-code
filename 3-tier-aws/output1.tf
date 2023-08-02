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
