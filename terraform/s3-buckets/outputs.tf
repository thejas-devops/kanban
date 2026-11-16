variable "bucket1_name" {
  description = "Name of the first S3 bucket"
  type        = string
  default     = "s3-bucket-1-thejas-20261116"
}

variable "bucket2_name" {
  description = "Name of the second S3 bucket"
  type        = string
  default     = "s3-bucket-2-thejas-20261116"
}

variable "environment" {
  description = "Environment tag for the buckets"
  type        = string
  default     = "dev"
}
