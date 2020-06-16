terraform {
  backend "s3" {
    bucket = "megalaboratorio-terraform"
    key    = "terraform/testing/networking.tfstate"
    region = "eu-west-1"
  }
}

