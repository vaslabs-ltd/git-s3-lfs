variable "s3_bucket_name" {
  type        = string
  description = "The name of the s3 bucket. Name must match the bucket_arn if you want to use your own exsisting bucket."
}

variable "bucket_arn" {
  type        = string
  description = "The arn of the bucket. Required only if you want to use your own exsisting bucket."
  default     = null
}

variable "environment" {
  type        = string
  description = "The name of the environment."
}

variable "project_name" {
  type        = string
  description = "The name of project."
}

variable "iam_user_minimum_password_length" {
  type        = number
  description = "The minimum lenght of the aws account password."
  default     = 16
}

variable "iam_user_password_require_lowercase_characters" {
  type        = bool
  description = "The aws account password requires lowercase characters."
  default     = true
}

variable "iam_user_password_require_numbers" {
  type        = bool
  description = "The aws account password requires numbers."
  default     = true
}

variable "iam_user_password_require_uppercase_characters" {
  type        = bool
  description = "The aws account password requires uppercase characters."
  default     = true
}

variable "iam_user_password_require_symbols" {
  type        = bool
  description = "The aws account password requires symbols."
  default     = true
}

variable "iam_user_can_change_password" {
  type        = bool
  description = "Allow users to change the aws account password ."
  default     = true
}

variable "new_users" {
  type        = map(map(string))
  description = "The users that will be created. Need to pass the aws account name and the keybase username. Check the /examples"
  default     = {}
}

variable "exsisting_users" {
  type        = list(string)
  description = "The users that already exists and does now need to create them. Need to pass the iam name of the user. Check the /examples"
  default     = []
}

variable "tags" {
  type        = map(string)
  description = "The tags that will be added to the resources."
  default     = {}
}