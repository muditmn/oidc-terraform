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