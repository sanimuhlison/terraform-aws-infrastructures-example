terraform {
  backend "s3" {
    bucket = "sanimuhlison-terraform-tfstates"
    key    = "project-abc/iam/users/sanimuhlison/states.tfstate"
    region = "ap-southeast-1"
  }
}

provider "aws" {
  version = "~> 3.0"
}

resource "aws_iam_user" "this" {
  name = "sanimuhlison"
  path = "/engineer/"

  tags = {
    ProvisionedBy = "terraform"
  }
}
