output "user_password" {
  value = { for k, user in aws_iam_user_login_profile.user : k => user.encrypted_password }
}

output "backet_arn" {
  value = local.bucket_arn
}