terraform {
  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "~>3.27"

    }
  }

  required_version = ">= 0.14.9"

}

provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0c6615d1e95c98aca"
  instance_type = "t2.micro"

  tags = {
    Name = "InstanceCreatedUsingTerraform"
  }
}
