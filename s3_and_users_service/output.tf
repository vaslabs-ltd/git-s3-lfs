output "user_password" {
  # value = aws_iam_user_login_profile.user[each.key].encrypted_password
  value = { for k, user in aws_iam_user_login_profile.user : k => user.encrypted_password }
}