# Terraform S3 Backend State Buckets

A Terraform module which creates S3 buckets designed to store remote Terraform state, across any AWS account.
A provider is included, to ensure resources are placed in the correct account.

## Usage

- As this module is designed to be used across multiple accounts, it is suggested that credentials are obtained from a Named profile [AWS Documentation](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html)
- It is expected that the backend be local and is committed to version control
- Ensure bucket name is unique

## Example

```
locals {
  project = "infrastructure"
  repo    = "my-git-repo"
}

module "this" {
  source = "harrison-terraform-module-tf-state-buckets"

  account_id  = "123456789012"
  profile     = "my-named-profile"
  region      = "ap-southeast-2"
  bucket_name = "my-aws-account-tfstate"
  project     = local.project
  repo        = local.repo
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.58.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |
| [aws_s3_bucket.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_acl.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl) | resource |
| [aws_s3_bucket_ownership_controls.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls) | resource |
| [aws_s3_bucket_public_access_block.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | AWS 12 digit Account Id | `string` | n/a | yes |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | S3 Bucket Name | `string` | n/a | yes |
| <a name="input_object_ownership"></a> [object\_ownership](#input\_object\_ownership) | Object ownership. Valid values: BucketOwnerEnforced, BucketOwnerPreferred or ObjectWriter. 'BucketOwnerEnforced': ACLs are disabled, and the bucket owner automatically owns and has full control over every object in the bucket. 'BucketOwnerPreferred': Objects uploaded to the bucket change ownership to the bucket owner if the objects are uploaded with the bucket-owner-full-control canned ACL. 'ObjectWriter': The uploading account will own the object if the object is uploaded with the bucket-owner-full-control canned ACL. | `string` | `"BucketOwnerEnforced"` | no |
| <a name="input_profile"></a> [profile](#input\_profile) | AWS Named Profile from Shared Configuration | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Project Name | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | AWS Region | `string` | n/a | yes |
| <a name="input_repo"></a> [repo](#input\_repo) | The name of the repository from which this module is called | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | AWS Resource Tags | `map(any)` | `{}` | no |

## Outputs

No outputs.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
