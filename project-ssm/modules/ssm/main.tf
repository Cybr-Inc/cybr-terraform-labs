# Get the current region
data "aws_region" "current" {}

# Get current account ID
data "aws_caller_identity" "current" {}

# create iam role for SSM
resource "aws_iam_role" "default_host_management" {
    name = "AWSSystemsManagerDefaultEC2InstanceManagementRole"
    description = "AWS Systems Manager Default EC2 Instance Management Role"
    assume_role_policy = jsonencode(
        {
      Statement = [
        {
          Action = "sts:AssumeRole"
          Effect = "Allow"
          Principal = {
            Service = "ssm.amazonaws.com"
          }
        },
      ]
      Version = "2012-10-17"
    }
    )
}

# attach iam policy to the role
resource "aws_iam_role_policy_attachment" "default_host_management" {
    role = aws_iam_role.default_host_management.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedEC2InstanceDefaultPolicy"
}

# enable SSM in the region
resource "aws_ssm_service_setting" "default_host_management" {
    setting_id    = "arn:aws:ssm:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:servicesetting/ssm/managed-instance/default-ec2-instance-management-role"
    setting_value = aws_iam_role.default_host_management.name
}