output "s3_bucket_details" {
  description = "Outputs attributes of our S3 bucket"
  value = [
    "Bucket Id: ${aws_s3_bucket.terraform_state.id}",
    "Bucket ARN: ${aws_s3_bucket.terraform_state.arn}",
    "Bucket Domain: ${aws_s3_bucket.terraform_state.bucket_domain_name}"
  ]
}