output "ec2_instance_details" {
  description = "Outputs attributes of our EC2 instance"
  value = [
    "EC2 ARN: ${aws_instance.ec2_host.arn}",
    "EC2 ID: ${aws_instance.ec2_host.id}"
  ]
}