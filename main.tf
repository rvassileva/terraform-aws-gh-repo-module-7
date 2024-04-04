terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "bucket_name" {
  bucket = var.name
  tags   = var.tags
}

resource "aws_s3_bucket_public_access_block" "access_to_bucket" {
  bucket = aws_s3_bucket.bucket_name.id

  block_public_acls   = var.public_acl
  block_public_policy = var.public_policy
}