# Backend configuration for storing Terraform state in S3
terraform {
  backend "s3" {
    bucket         = "bb-cz-terraform-backend"
    key            = "devj/terraform.tfstate"
    region         = "us-east-2" # Replace with your desired region
  }
}
