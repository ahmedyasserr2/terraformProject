terraform {
  backend "s3" {
    bucket = "321g"
    key    = "state"
    region = "us-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
