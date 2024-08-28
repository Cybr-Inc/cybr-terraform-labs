terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.63.1"
    }
  }
}

terraform {
  backend "s3" {
    bucket = var.aws_s3_bucket_name
    key    = "terraform.tfstate"
    region = var.aws_region
  }
}

provider "aws" {
  region = var.aws_region
}