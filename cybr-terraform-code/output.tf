output "s3_bucket_details" {
  description = "Outputs attributes of our S3 bucket"
  value = [
    "Bucket Id: ${aws_s3_bucket.example.id}",
    "Bucket ARN: ${aws_s3_bucket.example.arn}",
    "Bucket Domain: ${aws_s3_bucket.example.bucket_domain_name}"
  ]
}