variable "bucket_name" {
  type = string
}
variable "acl" {
  type    = string
  default = "private"
}
variable "region" {
  type    = string
  default = "us-east-1"
}
variable "force_destroy" {
  type    = bool
  default = false
}
variable "tags" {
  type    = map(string)
  default = {}
}
variable "sse_algorithm" {
  type    = string
  default = "aws:kms"
}
variable "versioning" {
  type    = bool
  default = true
}
variable "lifecycle_enabled" {
  type    = bool
  default = true
}
variable "lifecycle_days" {
  type    = number
  default = 365
}
variable "block_public_acls" {
  type    = bool
  default = true
}
variable "block_public_policy" {
  type    = bool
  default = true
}
variable "restrict_public_buckets" {
  type    = bool
  default = true
}
variable "ignore_public_acls" {
  type    = bool
  default = true
}