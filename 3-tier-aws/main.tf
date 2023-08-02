terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

variable "cidr" { 
  default = "10.1.0.0/16"
}

terraform {
  backend "s3" {
    bucket = "jayesh-tfstate"
    key    = "sample/3-tier"
    region = "us-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "sample-vpc"
  cidr = var.cidr

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
  public_subnets  = ["10.1.101.0/24", "10.1.102.0/24", "10.1.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}


