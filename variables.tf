variable "bucket_read_access" {
  description = "Bucket Name which should be unique across Region for read access"
  type        = string
  default     = "sai-demo-bucketa"
}

variable "bucket_read_write_access" {
  description = "Bucket Name which should be unique across Region for read and write access"
  type        = string
  default     = "sai-demo-bucketb"
}

variable "iam_user_s3_read" {
  description = "IAM user will have S3 read access"
  type        = string
  default     = "sai"
}

variable "iam_user_s3_read_write" {
  description = "IAM user will have S3 read and write access"
  type        = string
  default     = "sai"
}
