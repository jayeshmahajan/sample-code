# How to run

Setup AWS account creds




```
export AWS_PROFILE=jayesh-personal-es
export AWS_DEFAULT_REGION=us-east-1

terraform init
terraform plan 
terraform apply 
```

```
terraform state list


data.aws_elb_service_account.main
data.aws_instances.sample-ec2
aws_dynamodb_table.tf_notes_table
aws_s3_bucket.elb_logs
aws_secretsmanager_secret.db-pass
aws_secretsmanager_secret_version.db-pass-val
aws_security_group.db_sg
aws_security_group.ec2_sg
aws_security_group.lb_sg
random_password.db_master_pass
module.alb.aws_lb.this[0]
module.alb.aws_lb_listener.frontend_http_tcp[0]
module.alb.aws_lb_listener.frontend_https[0]
module.alb.aws_lb_target_group.main[0]
module.alb.aws_lb_target_group_attachment.this["0.my_target"]
module.alb.aws_security_group.this[0]
module.asg.data.aws_default_tags.current
module.asg.data.aws_iam_policy_document.assume_role_policy[0]
module.asg.data.aws_partition.current
module.asg.aws_autoscaling_group.this[0]
module.asg.aws_iam_instance_profile.this[0]
module.asg.aws_iam_role.this[0]
module.asg.aws_iam_role_policy_attachment.this["AmazonSSMManagedInstanceCore"]
module.asg.aws_launch_template.this[0]
module.vpc.aws_default_network_acl.this[0]
module.vpc.aws_default_route_table.default[0]
module.vpc.aws_default_security_group.this[0]
module.vpc.aws_eip.nat[0]
module.vpc.aws_eip.nat[1]
module.vpc.aws_eip.nat[2]
module.vpc.aws_internet_gateway.this[0]
module.vpc.aws_nat_gateway.this[0]
module.vpc.aws_nat_gateway.this[1]
module.vpc.aws_nat_gateway.this[2]
module.vpc.aws_route.private_nat_gateway[0]
module.vpc.aws_route.private_nat_gateway[1]
module.vpc.aws_route.private_nat_gateway[2]
module.vpc.aws_route.public_internet_gateway[0]
module.vpc.aws_route_table.private[0]
module.vpc.aws_route_table.private[1]
module.vpc.aws_route_table.private[2]
module.vpc.aws_route_table.public[0]
module.vpc.aws_route_table_association.private[0]
module.vpc.aws_route_table_association.private[1]
module.vpc.aws_route_table_association.private[2]
module.vpc.aws_route_table_association.public[0]
module.vpc.aws_route_table_association.public[1]
module.vpc.aws_route_table_association.public[2]
module.vpc.aws_subnet.private[0]
module.vpc.aws_subnet.private[1]
module.vpc.aws_subnet.private[2]
module.vpc.aws_subnet.public[0]
module.vpc.aws_subnet.public[1]
module.vpc.aws_subnet.public[2]
module.vpc.aws_vpc.this[0]
module.vpc.aws_vpn_gateway.this[0]


```


```

terraform output

LB_DNS = "sample-alb-XXXXX.us-east-1.elb.amazonaws.com" # changed to XX for security reason
LB_arn = "arn:aws:elasticloadbalancing:us-east-1:6411111111111:loadbalancer/app/sample-alb/9e3146xxxxxx" # changed to 111 and xxx
ALB_log_bucket = "aws_s3_bucket.elb_logs.arn"
VPC_ID = "vpc-0db63a24085505ecd"
ids = tolist([
  "i-0d4aa55febea71ae4",
])
private_subnets = [
  "subnet-0164f0bb2a60d85f1",
  "subnet-0fb0aead3e82723ee",
  "subnet-002ec1e46a6a63c57",
]
public_subnets = [
  "subnet-09e572b5c249c0460",
  "subnet-022561f2eae123266",
  "subnet-0a40958f0ead5f0ed",
]
vpc_arn = "arn:aws:ec2:us-east-1:641111111:vpc/vpc-0db63a24085505ecd"

```
