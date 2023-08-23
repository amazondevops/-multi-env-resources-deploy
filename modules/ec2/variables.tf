variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}
variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}
variable "key_name" {
  description = "Pem Key for the EC2 instance"
  type        = string
}
variable "subnet_id" {
  description = "Subnet ID for the EC2 instance"
  type        = string
}
variable "ec2-name" {
  description = "Name of the EC2 instance"
  type        = string
}
variable "security_group_id" {
  description = "SG For the EC2 instance"
  type        = string
}