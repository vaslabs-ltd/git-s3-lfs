variable "s3_bucket_name" {
  type        = string
  description = "The name of the s3 bucket."
}

variable "bucket_arn" {
  type        = string
  description = "The arn of the bucket. Only if you already have a bucket."
}

variable "environment" {
  type        = string
  description = "The name of the environment."
}

variable "project_name" {
  type        = string
  description = "The name of project."
}

variable "minimum_password_length" {
  type        = number
  description = "The minimum lenght of the password."
}

variable "require_lowercase_characters" {
  type        = bool
  description = "The password requires lowercase characters."
}

variable "require_numbers" {
  type        = bool
  description = "The password requires numbers."
}

variable "require_uppercase_characters" {
  type        = bool
  description = "The password requires uppercase characters."
}

variable "require_symbols" {
  type        = bool
  description = "The password requires symbols."
}

variable "allow_users_to_change_password" {
  type        = bool
  description = "Allow users to change the password ."
}

variable user {
  type = map(string, map(string, string))
  default = {
    "irodotos": {
      "iam": "irodotos.gitlab"
      "keybase": "irodotos7"
    }
  }
}

variable "aws_username" {
  type        = list(string)
  description = "The username for the aws ."
}

variable "keybase_username" {
  type        = list(string)
  description = "The username for the keybase ."
}

