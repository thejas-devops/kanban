output "bucket1_id" {
  description = "ID of the first S3 bucket"
  value       = aws_s3_bucket.bucket1.id
}

output "bucket1_arn" {
  description = "ARN of the first S3 bucket"
  value       = aws_s3_bucket.bucket1.arn
}

output "bucket2_id" {
  description = "ID of the second S3 bucket"
  value       = aws_s3_bucket.bucket2.id
}

output "bucket2_arn" {
  description = "ARN of the second S3 bucket"
  value       = aws_s3_bucket.bucket2.arn
}
