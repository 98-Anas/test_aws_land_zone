output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.networking.vpc_id
}

output "instance_ips" {
  description = "Private IPs of EC2 instances"
  value       = module.compute.instance_private_ips
}

output "flow_logs_bucket" {
  description = "Flow logs bucket name"
  value       = module.logging.s3_bucket_arn
}
