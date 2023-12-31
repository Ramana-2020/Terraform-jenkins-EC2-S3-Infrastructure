variable "ami" {
  description = "EC2 instance AMI ID"
  default     = "ami-0fc5d935ebf8bc3bc"
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
  default     = "ramana"
}

variable "security_groups" {
  description = "Security group for the EC2 instance"
  type        = list(string)
  default     = []
}

variable "subnet_id" {
  description = "The subnet ID for the EC2 instance"
  default     = "subnet-0f3ccbfd2a393a6ed"  
}

variable "tags" {
  type    = map(string)
  default = {
    Name        = "TF-JENKINS"
    Environment = "jenkins"
  }
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "s3_bucket" {
  type    = string
  default = "venkataramana2020"
}
