variable "account_id" {
  type        = string
  description = "AWS 12 digit Account Id"
}

variable "region" {
  type        = string
  description = "AWS Region"
}

variable "profile" {
  type        = string
  description = "AWS Named Profile from Shared Configuration"
}

variable "project" {
  type        = string
  description = "Project Name"
  default     = null
}

variable "repo" {
  type        = string
  description = "The name of the repository from which this module is called"
}
variable "bucket_name" {
  type        = string
  description = "S3 Bucket Name"
}

variable "tags" {
  type        = map(any)
  description = "AWS Resource Tags"
  default     = {}
}

variable "object_ownership" {
  description = "Object ownership. Valid values: BucketOwnerEnforced, BucketOwnerPreferred or ObjectWriter. 'BucketOwnerEnforced': ACLs are disabled, and the bucket owner automatically owns and has full control over every object in the bucket. 'BucketOwnerPreferred': Objects uploaded to the bucket change ownership to the bucket owner if the objects are uploaded with the bucket-owner-full-control canned ACL. 'ObjectWriter': The uploading account will own the object if the object is uploaded with the bucket-owner-full-control canned ACL."
  type        = string
  default     = "BucketOwnerEnforced"
}
