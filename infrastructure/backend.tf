terraform {
  backend "s3" {
    bucket = "Gideon-chisom-terraform-state-bucket"
    key    = "env1/dev/terraform.tfstate"
    region = "us-east-1"
  }
}