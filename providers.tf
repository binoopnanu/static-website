terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }

  backend "s3" {
    bucket         = "bn-tfstate-for-s3-cdn-15022026"
    key            = "s3-cdn/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "terraform-locks-15022026"
    encrypt        = true
  }

}

provider "aws" {
  region = var.aws_region
}
