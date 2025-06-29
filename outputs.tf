output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.networking.vpc_id
}

output "instance_public_ips" {
  description = "Public IP addresses of EC2 instances"
  value       = module.compute.instance_public_ips
}

output "cloudwatch_log_group_name" {
  description = "Name of the CloudWatch log group"
  value       = module.logging.cloudwatch_log_group_name
}