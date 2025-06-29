resource "aws_s3_bucket" "flow_logs" {
  bucket = "${var.prefix}-flow-logs-${data.aws_caller_identity.current.account_id}"

  tags = {
    Name        = "${var.prefix}-flow-logs"
    Environment = "prod"
  }
}

resource "aws_s3_bucket_ownership_controls" "flow_logs" {
  bucket = aws_s3_bucket.flow_logs.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_cloudwatch_log_group" "vpc_flow_logs" {
  name = "${var.prefix}-vpc-flow-logs"
}

resource "aws_flow_log" "s3" {
  log_destination      = aws_s3_bucket.flow_logs.arn
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = var.vpc_id
}

resource "aws_flow_log" "cloudwatch" {
  log_destination      = aws_cloudwatch_log_group.vpc_flow_logs.arn
  log_destination_type = "cloudwatch-logs"
  traffic_type         = "ALL"
  vpc_id               = var.vpc_id
}

data "aws_caller_identity" "current" {}
