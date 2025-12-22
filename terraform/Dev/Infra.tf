
# ./main.tf (root module in your infra repo)
terraform {
  required_version = "~> 1.9"
  backend "s3" {
    bucket         = "s3bucket2backend"
    key            = "infra/dev.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "dev-tf-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = "ap-south-1"
}

module "s3" {
  source = "../../terraform-module/s3"
  bucket_name = "demobuck-tfs-dev"
  acl = "private"
  region = "us-east-1"
  force_destroy = false
  sse_algorithm = "aws:kms"
  versioning = true
  lifecycle_enabled = true
  lifecycle_days = 365
  block_public_acls = true
  block_public_policy = true
  restrict_public_buckets = true
  ignore_public_acls = true
  tags = {
    Owner = "Cloud Team"
    Env   = "Dev"
  }
}