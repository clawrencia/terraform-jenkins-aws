terraform {
  backend "s3" {
    bucket = "sharing-session-cicd-terraform-eks"
    key    = "jenkisn/terraform.tfstate"
    region = "ap-southeast-1"
  }
}