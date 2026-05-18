terraform {
  required_providers {
    namecheap = {
      source = "namecheap/namecheap"
      version = "2.2.0"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.51"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.12.1" # Use a compatible Helm provider version
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.29"
    }
  }
}

provider "namecheap" {
  user_name = var.namecheap_username
  api_user = var.namecheap_api_user
  api_key = var.namecheap_api_key
  client_ip = var.namecheap_client_ip
  use_sandbox = false
}
provider "aws" {
  region = "us-east-1"
}
