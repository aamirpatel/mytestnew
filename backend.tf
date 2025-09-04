terraform {
  backend "s3" {
    bucket         = "mybucketsample71198"
    key            = "uc5/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile   = true
  }
}
