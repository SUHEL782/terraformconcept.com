terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.94.1"
    }
  }
}

provider "aws" {
  region = us-east-1
  
}
#terraform store sttefile in s3 bucket
# Create an S3 bucket to store Terraform state files

backend "s3" {
  bucket         = "my-unique-bucket-name"
  key            = "terraform.tfstate"
  region         = "us-east-1"
  dynamodb_table = "terraform-state-lock"
  encrypt        = true
}
