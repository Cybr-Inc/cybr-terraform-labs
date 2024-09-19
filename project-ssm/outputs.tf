output "ec2_resources" {
    value = [
        "Public EC2 Id: ${module.ec2_public1.ec2_resources.instance_id[0]}",
        "Private EC2 Id: ${module.ec2_private1.ec2_resources.instance_id[0]}"
    ]
  
}