terraform {
  backend "s3" {
    bucket         = "s3bucket2backend"
    key            = "infra/dev.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "dev-tf-locks"
    encrypt        = true
  }
}