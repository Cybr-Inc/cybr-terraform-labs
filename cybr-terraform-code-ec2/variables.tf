variable "aws_region" {
  description = "The aws region to deploy in."
  type        = string
  default     = "us-east-1"
}

variable "aws_tagging" {
  description = "Resource tags."
  type        = map(string)
  default = {
    "Team"        = "security",
    "Environment" = "dev"
  }
}
