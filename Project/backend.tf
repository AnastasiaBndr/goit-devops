terraform {
  backend "s3" {
    bucket = "anastasia-terra-state-final-project-07212026"
    key            = "lesson-8-9/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}


