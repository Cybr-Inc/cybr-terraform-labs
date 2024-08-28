resource "aws_s3_bucket" "terraform_state" {
  bucket = var.aws_s3_bucket_name
  force_destroy = true

  tags = var.aws_tagging
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}
