# AWS IAM Module for EKS Management

Terraform module to set up an IAM role to create EKS clusters

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_this"></a> [this](#module\_this) | terraform-aws-modules/iam/aws//modules/iam-assumable-role | ~> 5.0 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.manage](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.manage_state](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.read](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.manage](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.manage_state](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.read](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_state_bucket_arn"></a> [state\_bucket\_arn](#input\_state\_bucket\_arn) | ARN of the S3 state bucket to that will be used | `string` | n/a | yes |
| <a name="input_trusted_role_arns"></a> [trusted\_role\_arns](#input\_trusted\_role\_arns) | ARNs of AWS entities who can assume these roles | `list(string)` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of the VPC where the cluster and its nodes will be provisioned | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## Docs

To update the docs just run
```shell
$ terraform-docs .
```