# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## v0.1.2

- Make the `aws_s3_bucket_acl` resource conditional depending on the Object Ownership value, to fall into line with the new rules regarding [S3 bucket creation](https://aws.amazon.com/blogs/aws/heads-up-amazon-s3-security-changes-are-coming-in-april-of-2023/)

## v0.1.1

### Added

- Add ability to configure object ownership via `object_ownership` variable. By default the value is `BucketOwnerEnforced`

## v0.1.0
- Initial release
-
