variable "aws_region" {
  description = "AWS region in which to provision the cluster."
  type        = string
  default     = "us-east-1"
}

variable "name" {
  description = "Prefix used for all provisioned resources."
  type        = string
  default     = "phoenix"
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "dev"
}

variable "ami_id" {
  description = "Ubuntu or other Linux AMI ID for all nodes."
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for the server and workers."
  type        = string
  default     = "t3.small"
}

variable "key_name" {
  description = "Existing EC2 key pair name used for SSH."
  type        = string
}

variable "admin_cidr" {
  description = "Public IPv4 address allowed to SSH, in CIDR notation."
  type        = string
}

variable "worker_count" {
  description = "Number of k3s worker nodes."
  type        = number
  default     = 2

  validation {
    condition     = var.worker_count >= 2
    error_message = "worker_count must be at least 2."
  }
}

variable "vpc_cidr" {
  description = "CIDR block for the cluster VPC."
  type        = string
  default     = "10.42.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet containing the nodes."
  type        = string
  default     = "10.42.1.0/24"
}

variable "availability_zone" {
  description = "Availability zone for the public subnet."
  type        = string
  default     = "us-east-1a"
}

variable "root_volume_size" {
  description = "Root EBS volume size in GiB."
  type        = number
  default     = 30
}