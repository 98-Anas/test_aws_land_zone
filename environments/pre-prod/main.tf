module "networking" {
  source      = "../module/networking"
  prefix      = "poc-pre-prod"
  environment = "pre-prod"
  aws_region  = var.aws_region
  vpc_cidr    = var.vpc_cidr
}

module "compute" {
  source      = "../module/compute"
  prefix      = "poc-pre-prod"
  environment = "pre-prod"
  vpc_id      = module.networking.vpc_id
  subnet_ids  = module.networking.public_subnet_ids
}
