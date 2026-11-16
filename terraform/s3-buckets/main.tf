provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "bucket1" {
  bucket = var.bucket1_name

  tags = {
    Name        = "s3-bucket-1"
    Environment = var.environment
  }
}

resource "aws_s3_bucket_versioning" "bucket1_versioning" {
  bucket = aws_s3_bucket.bucket1.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "bucket2" {
  bucket = var.bucket2_name

  tags = {
    Name        = "s3-bucket-2"
    Environment = var.environment
  }
}

resource "aws_s3_bucket_versioning" "bucket2_versioning" {
  bucket = aws_s3_bucket.bucket2.id

  versioning_configuration {
    status = "Enabled"
  }
}
