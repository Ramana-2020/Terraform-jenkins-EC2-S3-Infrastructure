variable "ami" {
  description = "EC2 instance AMI ID"
  default     = "ami-0287a05f0ef0e9d9a"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "availability_zone" {
  description = "The availability zone for the EC2 instance."
  type        = string
  default     = "ap-south-1a"
}

variable "key_name" {
  description = "EC2 instance key pair name"
  default     = "jpass"
}

variable "security_groups" {
  description = "Security group for the EC2 instance"
  type        = list(string)
  default     = []
}

variable "subnet_id" {
  description = "The subnet ID for the EC2 instance"
  default     = "subnet-0e1e12286b0be59b8"  
}

variable "tags" {
  type    = map(string)
  default = {
    Name        = "TF-JENKINS"
    Environment = "Dev"
  }
}

variable "region" {
  type    = string
  default = "ap-south-1"
}

variable "s3_bucket" {
  type    = string
  default = "prasanthkumar.000"
}
