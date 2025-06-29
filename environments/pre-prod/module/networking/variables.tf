variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "prefix" {
  description = "Resource naming prefix"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}
