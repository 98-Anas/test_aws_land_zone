output "vpc_id" {
  description = "The ID of the VPC"
  value       = modules.networking.vpc_id
}

output "instance_public_ips" {
  description = "Public IP addresses of EC2 instances"
  value       = modules.compute.instance_public_ips
}

output "cloudwatch_log_group_name" {
  description = "Name of the CloudWatch log group"
  value       = modules.logging.cloudwatch_log_group_name
}