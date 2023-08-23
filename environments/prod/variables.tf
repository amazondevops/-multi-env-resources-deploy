#Ec2 Variables
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  #default     = "t2.micro"
}
variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  #default     = "ami-0430580de6244e02e"
}
variable "key_name" {
  description = "Pem Key for the EC2 instance"
  type        = string
  #default     = "WSUS"
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
  default     = " "
}

#Security Group Variables
variable "sg_name" {
  description = "Name of the Security Group"
  type        = string
}
variable "sg_vpc_id" {
  description = "VPC for the Security Group"
  type        = string
}