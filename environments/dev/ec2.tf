module "ec2_instance" {
  source = "../../modules/ec2"
  instance_type           = var.instance_type       # Update to your desired instance type
  ami_id                  = var.ami_id
  ec2-name                = var.ec2-name              # Replace with your desired AMI ID
  security_group_id       = module.security_groups.security_group_id
  subnet_id               = var.subnet_id
  key_name                = var.key_name
  depends_on = [module.security_groups] 
}



