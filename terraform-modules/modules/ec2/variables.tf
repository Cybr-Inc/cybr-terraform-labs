variable "instance_type" {
  type        = string
  description = "Select the instance type. Options 't2.micro' or 't3.micro'"

  validation {
    condition     = (var.instance_type == "t2.micro" || var.instance_type == "t3.micro")
    error_message = "The instance_type must be 't2.micro' or 't3.micro'"
  }
}

variable "tagging" {
  type        = map(string)
  description = "Add 'BusinessUnit' and other tags"

  validation {
    condition     = contains(keys(var.tagging), "BusinessUnit")
    error_message = "At least one tag must be called 'BusinessUnit'"
  }
}

variable "image_os" {
  type        = string
  description = "Select the image OS. Options 'ubuntu' or 'amazon linux'"

  validation {
    condition     = (var.image_os == "ubuntu" || var.image_os == "amazon linux")
    error_message = "The image_os must be 'ubuntu' or 'amazon linux'"
  }
}