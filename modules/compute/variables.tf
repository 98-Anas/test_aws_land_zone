variable "vpc_id" {
  description = "VPC ID for instances"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs for instances"
  type        = list(string)
}

variable "prefix" {
  description = "Resource naming prefix"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}
