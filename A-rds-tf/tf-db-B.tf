terraform {
  backend "s3" {
    bucket = "postgresbuk"
    key    = "A-rds-tf/tfstate"
    region = "us-east-1"
    #dynamodb_table = "tf-s3-x"
  }
}