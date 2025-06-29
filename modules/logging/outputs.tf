output "s3_bucket_arn" {
  description = "ARN of the flow logs S3 bucket"
  value       = aws_s3_bucket.flow_logs.arn
}

output "cloudwatch_log_group_name" {
  description = "Name of the CloudWatch log group"
  value       = aws_cloudwatch_log_group.vpc_flow_logs.name
}
