terraform {
  backend "s3" {
    bucket         = "terraform-state-891612548125"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"
  }
}