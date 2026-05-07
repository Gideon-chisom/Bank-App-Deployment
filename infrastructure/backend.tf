terraform {
  backend "s3" {
    bucket         = "gideon-chisom-terraform-state-bucket"
    key            = "env1/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}