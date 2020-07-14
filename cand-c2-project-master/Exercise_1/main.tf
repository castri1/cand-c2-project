variable "region" {
  default = "us-east-1"
}

variable "daniel_profile" {
  default = "DanielDevOps"
}

# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  region     = var.region
  profile    = var.daniel_profile
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  ami           = "ami-08f3d892de259504d"
  instance_type = "t2.micro"
  count = "4"
  subnet_id = "subnet-0997f0a29c25898ed"
  tags = {
    Env = "development"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
# resource "aws_instance" "Udacity_M4" {
#   ami           = "ami-08f3d892de259504d"
#   instance_type = "m4.large"
#   count = "2"
#   subnet_id = "subnet-0997f0a29c25898ed"
#   tags = {
#     Env = "development"
#   }
# }