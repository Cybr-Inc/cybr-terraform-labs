variable "aws_region" {
  description = "The aws region to deploy in."
  type        = string
  default     = "us-east-1"
}

variable "aws_s3_bucket_name" {
  description = "The unique name of the AWS bucket."
  type        = string
  default     = "cybr-christophe"
}

variable "aws_tagging" {
  description = "Resource tags."
  type        = map(string)
  default = {
    "Team"        = "security",
    "Environment" = "dev"
  }
}
