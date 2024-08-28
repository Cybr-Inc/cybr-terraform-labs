resource "aws_s3_bucket" "example" {
  bucket = var.aws_s3_bucket_name

  tags = var.aws_tagging
}