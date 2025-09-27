variable "aws_region" {
  description = "AWS region where resources will be provisioned"
  default = "eu-central-1"
}

variable "env" {
  description = "This is the environment name eg. dev/stg/prd"
  default = "dev"
}

variable "instance_type" {
  description = "This is the Instance Type for AWS EC2 eg. t2.micro/t2.medium/t2.small"
  default = "t2.large"
}

# variable "instance_count" {
#   description = "This is the count of the no. of the instances I need"
#   type = number
# }

variable "ami" {
  description = "This is the AMI ID for EC2 instance"
  default = "ami-0a116fa7c861dd5f9"
}

# variable "volume_size" {
#   description = "This is the size of Root EBS for AWS EC2"
#   type = number
# }
