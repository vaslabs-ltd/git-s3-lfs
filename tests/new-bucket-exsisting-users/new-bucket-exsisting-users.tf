module "s3_bucket" {
  source          = "../.."
  s3_bucket_name  = "my-s3-bucket"
  environment     = "dev"
  project_name    = "my-project"
  exsisting_users = tolist(["new-bucket-exsisting-user-irodotos", "new-bucket-exsisting-user-vasilis"])
}
