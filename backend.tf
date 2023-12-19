terraform {
  backend "s3" {
    bucket         = "prasanthkumar.000"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "prasanthkumar"
  }
}
