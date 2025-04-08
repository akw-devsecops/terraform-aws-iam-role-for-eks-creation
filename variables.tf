variable "vpc_id" {
  description = "ID of the VPC where the cluster and its nodes will be provisioned"
  type        = string
}

variable "addtional_vpc_ids" {
  description = "List of additional VPC IDs to be used for the cluster"
  type        = list(string)
  default     = []
}

variable "state_bucket_arn" {
  description = "ARN of the S3 state bucket to that will be used"
  type        = string
}

variable "trusted_role_arns" {
  description = "ARNs of AWS entities who can assume these roles"
  type        = list(string)
}
