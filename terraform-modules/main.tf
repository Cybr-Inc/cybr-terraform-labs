module "ec2_instance" {
  source = "./modules/ec2"
  instance_type = "t2.micro"
  image_os = "ubuntu"
  tagging = {
    "Name" = "christophes-instance"
    "BusinessUnit" = "infosec"
  }
}