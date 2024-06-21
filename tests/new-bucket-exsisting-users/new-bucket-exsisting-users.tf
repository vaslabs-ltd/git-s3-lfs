module "s3_bucket" {
  source          = "../.."
  s3_bucket_name  = "my-s3-bucket"
  environment     = "dev"
  project_name    = "my-project"
  exsisting_users = tolist(["new-bucket-exsisting-users-irodotos", "new-bucket-exsisting-users-vasilis"])
}
