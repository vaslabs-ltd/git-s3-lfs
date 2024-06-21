module "exsiting-s3_bucket" {
  source          = "../.."
  environment     = "exsisting-bucket-and-users-dev"
  project_name    = "exsisting-bucket-and-users-project"
  s3_bucket_name  = "exsitingS3bucketAndUsers"
  bucket_arn      = "arn:aws:s3:::exsitingS3bucketAndUsers"
  exsisting_users = tolist(["exsisting-bucket-and-users-irodotos", "exsisting-bucket-and-users-vasilis"])
}