
module "ec2" {
  source = "./modules/ec2/"

  environment = var.environment

  instance_name        = var.service_name
  instance_type        = var.instances_params.amundsen.instance_type
  keypair_name         = var.instances_params.amundsen.keypair_name
  subnet_id            = var.instances_params.amundsen.subnet_id
  vpc_id               = var.instances_params.amundsen.vpc_id
  volume_size          = var.instances_params.amundsen.volume_size
  volume_type          = var.instances_params.amundsen.volume_type
  
}