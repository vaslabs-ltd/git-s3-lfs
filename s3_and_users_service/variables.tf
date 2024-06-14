variable "s3_bucket_name" {
  type        = string
  description = "The name of the s3 bucket. Required if bucket arn is not provided"
  default     = null
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

variable "minimum_password_length" {
  type        = number
  description = "The minimum lenght of the password."
  default     = 16
}

variable "require_lowercase_characters" {
  type        = bool
  description = "The password requires lowercase characters."
  default     = true
}

variable "require_numbers" {
  type        = bool
  description = "The password requires numbers."
  default     = true
}

variable "require_uppercase_characters" {
  type        = bool
  description = "The password requires uppercase characters."
  default     = true
}

variable "require_symbols" {
  type        = bool
  description = "The password requires symbols."
  default     = true
}

variable "allow_users_to_change_password" {
  type        = bool
  description = "Allow users to change the password ."
  default     = true
}

variable "user" {
  type = map(map(string))
}

variable "tags" {
  type = map(string)
}