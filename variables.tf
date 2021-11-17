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
