module "example_s3_with_users_bucket" {
  source          = "../"
  s3_bucket_name  = "my-s3-bucket"
  environment     = "dev"
  project_name    = "my-project"
  exsisting_users = tolist(["exsisting-irodotos.gitlab", "exsisting-vasilis.gitlab"])
  tags = {
    key1 = "value1",
    key2 = "value2"
  }
}
