locals {
  tags = {
    instance = {
      Name = upper("${var.instance_name}-${var.environment}")
      Env  = var.environment
    }
    sg = {
      Name = upper("${var.instance_name}-${var.environment}")
    }
  }
}

variable "instance_name" {
    type        = string
    description = "Name of instance"
}

variable "environment" {
    type        = string
    description = "Environment for Applications"
}

variable "instance_type" {
    type        = string
    description = "Type of the EC2 instance"
}

variable "volume_size" {
    type        = string
    description = "Main volume size instance"
}
variable "volume_type" {
    type        = string
    description = "Type of volume. Can be standard, gp2, io1 or io2"
}

variable "keypair_name" { 
    type        = string
    description = "Keypair ssh access name"
}

variable "vpc_id" { 
    type        = string
    description = "Main VPC for instance"
}

variable "subnet_id" { 
    type        = string
    description = "Main subnet id for instance"
}