terraform {
  backend "s3" {
    bucket = "321ga"
    key    = "state"
    region = "us-west-2"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}
