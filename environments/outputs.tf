output "vpc_id" {
  description = "The ID of the VPC"
  source      = "environments/modules/networking"
  value       = module.networking.vpc_id
}

output "instance_public_ips" {
  description = "Public IP addresses of EC2 instances"
  source      = "environments/modules/compute"
  value       = module.compute.instance_public_ips
}

output "cloudwatch_log_group_name" {
  description = "Name of the CloudWatch log group"
  source      = "environments/modules/logging"
  value       = module.logging.cloudwatch_log_group_name
}