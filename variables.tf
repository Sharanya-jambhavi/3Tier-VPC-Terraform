variable "aws_region" {
  default = "ap-south-1"
}

variable "project_name" {
  default = "two-tier-demo"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "app_ami_id" {
  default = "ami-0f58b397bc5c1f2e8" # Amazon Linux 2 AMI ap-south-1
}
