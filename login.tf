resource "aws_iam_account_password_policy" "strict" {
  count                          = var.new_users == {} ? 0 : 1
  minimum_password_length        = var.iam_user_minimum_password_length
  require_lowercase_characters   = var.iam_user_password_require_lowercase_characters
  require_numbers                = var.iam_user_password_require_numbers
  require_uppercase_characters   = var.iam_user_password_require_uppercase_characters
  require_symbols                = var.iam_user_password_require_symbols
  allow_users_to_change_password = var.iam_user_can_change_password
}

locals {
  user_policy_doc_actions = [
    "iam:GetLoginProfile",
    "iam:ListAccessKeys",
    "iam:GetAccessKeyLastUsed",
    "iam:CreateAccessKey",
    "iam:DeleteAccessKey",
    "iam:UpdateAccessKey",
    "iam:GetUser"
  ]
}
