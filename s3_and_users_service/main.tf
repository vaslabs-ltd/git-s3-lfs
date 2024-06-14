resource "aws_s3_bucket" "git_lfs_bucket" {
  count  = var.bucket_arn == null ? 1 : 0
  bucket = var.s3_bucket_name
  tags = merge(
    var.tags,
    {
      Name        = var.s3_bucket_name
      Environment = var.environment
      Project     = var.project_name
  })
}

locals {
  bucket_arn  = var.bucket_arn == null ? aws_s3_bucket.git_lfs_bucket[0].arn : var.bucket_arn
  bucket_name = var.bucket_arn == null ? aws_s3_bucket.git_lfs_bucket[0].bucket : var.s3_bucket_name
}

resource "aws_iam_policy" "access_to_the_bucket" {
  name        = "${var.project_name}-LFS-Access"
  description = "Permissions to access S3 for git lfs for project ${var.project_name}"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "s3:PutObject",
          "s3:DeleteObject",
          "s3:GetObject",
          "s3:ListMultipartUploadParts",
          "s3:ListBucketMultipartUploads",
          "s3:GetObjectAcl",
          "s3:PutObjectAcl"
        ]
        Resource = "${local.bucket_arn}/*"
      }
    ]
  })
  tags = var.tags
}

resource "aws_iam_group" "group" {
  name = "${locals.bucket_name}-group"
}

resource "aws_iam_group_policy_attachment" "group_policy_attachment" {
  policy_arn = aws_iam_policy.access_to_the_bucket.arn
  group      = aws_iam_group.group.name
}

# start the user creation
resource "aws_iam_user" "user" {
  for_each = var.user
  name     = each.value.iam
  tags     = var.tags
}

resource "aws_iam_user_login_profile" "user" {
  for_each                = var.user
  user                    = aws_iam_user.user[each.key].name
  pgp_key                 = "keybase:${each.value.keybase}"
  password_reset_required = true
  lifecycle {
    ignore_changes = [password_reset_required]
  }
}

resource "aws_iam_user_policy" "user_policy" {
  for_each = var.user
  user     = aws_iam_user.user[each.key].name
  name     = "${each.value.iam}-policy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = local.user_policy_doc_actions
        Resource = "${aws_iam_user.user[each.key].arn}"
      }
    ]
  })
}

resource "aws_iam_user_group_membership" "user_membership" {
  for_each = var.user
  user     = aws_iam_user.user[each.key].name
  groups   = [aws_iam_group.group.name]
}


