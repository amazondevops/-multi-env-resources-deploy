output "public_ip" {
  value = module.ec2_instance.public_ip
}
output "security_group_id" {
  value =module.security_groups.security_group_id
}