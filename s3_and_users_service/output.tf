output "user_password" {
  value       = { for k, user in aws_iam_user_login_profile.user : k => user.encrypted_password }
  description = "The encrypted password of the users. Use keybase to decrypt it."
}

output "backet_arn" {
  value       = local.bucket_arn
  description = "The bucket arn of the new s3 bucket."
}

output "bucket_name" {
  value       = local.bucket_name
  description = "The bucket name you should use for your git lfs configuration"
}