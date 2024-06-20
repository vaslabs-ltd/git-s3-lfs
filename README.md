<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 1.8.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 1.8.5 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_account_password_policy.strict](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_account_password_policy) | resource |
| [aws_iam_group.group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group) | resource |
| [aws_iam_group_policy_attachment.group_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment) | resource |
| [aws_iam_policy.access_to_the_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_user.user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_group_membership.user_membership](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_group_membership) | resource |
| [aws_iam_user_login_profile.user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_login_profile) | resource |
| [aws_iam_user_policy.user_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy) | resource |
| [aws_s3_bucket.git_lfs_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_arn"></a> [bucket\_arn](#input\_bucket\_arn) | The arn of the bucket. Required only if you want to use your own exsisting bucket. | `string` | `null` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The name of the environment. | `string` | n/a | yes |
| <a name="input_exsisting_users"></a> [exsisting\_users](#input\_exsisting\_users) | The users that already exists and does now need to create them. Need to pass the arn of the user and the keybase username. Check the /examples | `list(string)` | `[]` | no |
| <a name="input_iam_user_can_change_password"></a> [iam\_user\_can\_change\_password](#input\_iam\_user\_can\_change\_password) | Allow users to change the aws account password . | `bool` | `true` | no |
| <a name="input_iam_user_minimum_password_length"></a> [iam\_user\_minimum\_password\_length](#input\_iam\_user\_minimum\_password\_length) | The minimum lenght of the aws account password. | `number` | `16` | no |
| <a name="input_iam_user_password_require_lowercase_characters"></a> [iam\_user\_password\_require\_lowercase\_characters](#input\_iam\_user\_password\_require\_lowercase\_characters) | The aws account password requires lowercase characters. | `bool` | `true` | no |
| <a name="input_iam_user_password_require_numbers"></a> [iam\_user\_password\_require\_numbers](#input\_iam\_user\_password\_require\_numbers) | The aws account password requires numbers. | `bool` | `true` | no |
| <a name="input_iam_user_password_require_symbols"></a> [iam\_user\_password\_require\_symbols](#input\_iam\_user\_password\_require\_symbols) | The aws account password requires symbols. | `bool` | `true` | no |
| <a name="input_iam_user_password_require_uppercase_characters"></a> [iam\_user\_password\_require\_uppercase\_characters](#input\_iam\_user\_password\_require\_uppercase\_characters) | The aws account password requires uppercase characters. | `bool` | `true` | no |
| <a name="input_new_users"></a> [new\_users](#input\_new\_users) | The users that will be created. Need to pass the aws account name and the keybase username. Check the /examples | `map(map(string))` | `{}` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | The name of project. | `string` | n/a | yes |
| <a name="input_s3_bucket_name"></a> [s3\_bucket\_name](#input\_s3\_bucket\_name) | The name of the s3 bucket. Name must match the bucket\_arn if you want to use your own exsisting bucket. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | The tags that will be added to the resources. | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_backet_arn"></a> [backet\_arn](#output\_backet\_arn) | The bucket arn of the new s3 bucket. |
| <a name="output_bucket_name"></a> [bucket\_name](#output\_bucket\_name) | The bucket name you should use for your git lfs configuration |
| <a name="output_user_password"></a> [user\_password](#output\_user\_password) | The encrypted password of the users. Use keybase to decrypt it. |
<!-- END_TF_DOCS -->