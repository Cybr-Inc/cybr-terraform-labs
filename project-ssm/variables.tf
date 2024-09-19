variable "vpc_endpoints" {
    type = list(string)
    description = "A list of VPC endpoints to create"
    default = [ "ssm", "ssmmessages" ]
}