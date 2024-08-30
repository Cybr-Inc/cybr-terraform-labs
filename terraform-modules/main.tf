module "ec2_instance" {
  source        = "./modules/ec2"
  instance_type = "t2.micro"
  image_os      = "ubuntu"
  tagging = {
    "name"         = "christophes-instance"
    "BusinessUnit" = "infosec"
  }
}