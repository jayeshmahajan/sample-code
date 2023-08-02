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

