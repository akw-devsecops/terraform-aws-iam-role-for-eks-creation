variable "vpc_id" {
  description = "ID of the VPC where the cluster and its nodes will be provisioned"
  type        = string
}

variable "state_bucket_arn" {
  description = "ARN of the S3 state bucket to that will be used"
  type        = string
}

variable "trusted_role_arns" {
  description = "ARNs of AWS entities who can assume these roles"
  type        = list(string)
}
