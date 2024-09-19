variable "vpc_config" {
  type = object({
    cidr_block = string
    enable_dns_hostnames = optional(bool, true)
    enable_dns_support = optional(bool, true)
    availability_zones = list(string)
    tags = map(string)
  })

  description = <<EOT
  Configuration options for the VPC:
  - cidr_block: The CIDR block for the VPC.
  - enable_dns_hostnames: Enable or disable DNS hostnames for the VPC (default: true).
  - enable_dns_support: Enable or disable DNS support within the VPC (default: true).
  - availability_zones: A list of availability zones to create subnets in (optional).
  - vpc_tags: A map of tags to apply to the VPC (optional).
EOT
}