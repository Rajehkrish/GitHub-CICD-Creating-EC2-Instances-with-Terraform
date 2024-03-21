provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "myec2" {
   ami 			= "ami-02d7fd1c2af6eead0"
   instance_type 	= "t2.micro"
}

terraform {
  backend "s3" {
  bucket = "terraformproj-github"
  key    = "dragan/terraform.tfstate"
  region = "us-east-1"
  }
}
