module "network" {
  source = "./modules/network"

  name               = var.name
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  availability_zone  = var.availability_zone
}

module "security" {
  source = "./modules/security"

  name       = var.name
  vpc_id     = module.network.vpc_id
  admin_cidr = var.admin_cidr
}

module "compute" {
  source = "./modules/compute"

  name                  = var.name
  ami_id                = var.ami_id
  instance_type         = var.instance_type
  key_name              = var.key_name
  subnet_id             = module.network.public_subnet_id
  server_security_group_ids = [
    module.security.server_security_group_id,
    module.security.node_security_group_id,
  ]
  worker_security_group_ids = [module.security.node_security_group_id]
  worker_count              = var.worker_count
  root_volume_size          = var.root_volume_size
}