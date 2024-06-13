resource "aws_iam_account_password_policy" "strict" {
  minimum_password_length        = var.minimum_password_length
  require_lowercase_characters   = var.require_lowercase_characters
  require_numbers                = var.require_numbers
  require_uppercase_characters   = var.require_uppercase_characters
  require_symbols                = var.require_symbols
  allow_users_to_change_password = var.allow_users_to_change_password
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
