terraform {
  backend "s3" {
    bucket = "sanimuhlison-terraform-tfstates"
    key    = "project-xyz/iam/users/muhlisonsani/states.tfstate"
    region = "ap-southeast-1"
  }
}

provider "aws" {
  version = "~> 3.0"
}

resource "aws_iam_user" "this" {
  name = "muhlisonsani"
  path = "/engineer/"

  tags = {
    ProvisionedBy = "terraform"
  }
}
