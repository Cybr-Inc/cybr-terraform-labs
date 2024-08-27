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

variable "desired_azs" {
  type    = list(string)
  default = ["us-east-1f", "us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d"]
}