provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "s3-bucket-1-thejas"

  tags = {
    Name        = "s3-bucket"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_versioning" "bucket1_versioning" {
  bucket = aws_s3_bucket.bucket1.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "s3-bucket-2-thejas"

  tags = {
    Name        = "s3-bucket"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_versioning" "bucket2_versioning" {
  bucket = aws_s3_bucket.bucket2.id
  versioning_configuration {
    status = "Enabled"
  }
}

variable "bucket1_name" {
  description = "Name of the first S3 bucket"
  type        = string
  default     = "thejas"
}

variable "bucket2_name" {
  description = "Name of the second S3 bucket"
  type        = string
  default     = "thejas"
}

variable "environment" {
  description = "Environment tag for the buckets"
  type        = string
  default     = "terraform"
}
