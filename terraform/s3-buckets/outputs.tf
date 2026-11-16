output "bucket1_id" {
  description = "ID of the first S3 bucket"
  value       = aws_s3_bucket.buckt1.id
}

output "bucket2_id" {
  description = "ID of the second S3 bucket"
  value       = aws_s3_bucket.buckt2.id
}
