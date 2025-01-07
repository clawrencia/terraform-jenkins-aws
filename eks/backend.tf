terraform {
  backend "s3" {
    bucket = "sharing-session-cicd-terraform-eks"
    key    = "eks/terraform.tfstate"
    region = "ap-southeast-1"
  }
}