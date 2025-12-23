terraform {
  required_version = "~> 1.9"
}

provider "aws" {
  region = "ap-south-1"
}

module "s3" {
  source = "../../terraform-module/s3"
  bucket_name = var.bucket_name
  acl = var.acl
  region = var.region
  force_destroy = var.force_destroy
  sse_algorithm = var.sse_algorithm
  versioning = var.versioning
  lifecycle_enabled = var.lifecycle_enabled
  lifecycle_days = var.lifecycle_days
  block_public_acls = var.block_public_acls
  block_public_policy = var.block_public_policy
  restrict_public_buckets = var.restrict_public_buckets
  ignore_public_acls = var.ignore_public_acls
  tags = var.tags
}