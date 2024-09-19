data "aws_ami" "amazon_linux_latest" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["*al2023-ami-2023*x86_64*"]
  }
  filter {
    name   = "platform-details"
    values = ["Linux/UNIX"]
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

resource "aws_instance" "instance" {
  ami                         = data.aws_ami.amazon_linux_latest.id
  instance_type               = var.ec2_config.instance_type
  subnet_id                   = var.ec2_config.subnet_id
  associate_public_ip_address = var.ec2_config.public_ip
  vpc_security_group_ids      = var.ec2_config.security_groups
  tags                        = var.ec2_config.tags

  root_block_device {
    encrypted = true
  }
}