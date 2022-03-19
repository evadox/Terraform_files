terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA2ACW5MZMDST5ZAYW"
  secret_key = "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"
}