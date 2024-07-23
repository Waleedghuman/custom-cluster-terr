terraform {
  backend "s3" {
    bucket = "waleed-bkt"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
  required_providers {
    rancher2 = {
      source  = "rancher/rancher2"
      version = ">= 3.1.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

data "aws_ssm_parameter" "rancher_api_url" {
  name = var.rancher_api
}

data "aws_ssm_parameter" "rancher_token_key" {
  name = var.rancher_token
}

provider "rancher2" {
  api_url   = data.aws_ssm_parameter.rancher_api_url.value
  token_key = data.aws_ssm_parameter.rancher_token_key.value
  insecure  = true
}

