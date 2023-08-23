module "security_groups" {
  source = "../../modules/sg"
  sg_name   = var.sg_name
  sg_vpc_id = var.sg_vpc_id
}