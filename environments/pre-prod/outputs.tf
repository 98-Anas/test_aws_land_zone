output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.networking.vpc_id
}

output "instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = module.compute.instance_public_ip
}

output "public_subnet_ids" {
  description = "IDs of public subnets"
  value       = module.networking.public_subnet_ids
}
