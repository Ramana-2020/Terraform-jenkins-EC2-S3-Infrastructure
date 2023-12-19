terraform {
  backend "s3" {
    bucket         = "venkataramana2020"
    key            = "aws-s3.tf-state"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "ramana"
  }
}
