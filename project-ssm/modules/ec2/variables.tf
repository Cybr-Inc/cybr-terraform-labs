variable "ec2_config" {
  type = object({
    instance_type   = string
    subnet_id       = string
    public_ip       = optional(bool, false)
    security_groups = optional(list(string))
    tags            = map(string)
  })

  description = <<EOT
  Configuration options for the EC2 instance:
    - instance_type: The instance type for the EC2 instance.
    - subnet_id: The subnet ID for the EC2 instance.
    - public_ip: Assign a public IP address to the EC2 instance (default: false).
    - security_groups: A list of security group IDs to apply to the EC2 instance.
    - tags: A map of tags to apply to the EC2 instance.
EOT
}