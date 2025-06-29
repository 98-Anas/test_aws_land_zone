module "networking" {
  source      = "../../modules/networking"
  prefix      = "poc-prod"
  environment = "prod"
  aws_region  = var.aws_region
  vpc_cidr    = var.vpc_cidr
}

module "compute" {
  source      = "../../modules/compute"
  prefix      = "poc-prod"
  environment = "prod"
  vpc_id      = module.networking.vpc_id
  subnet_ids  = module.networking.public_subnet_ids
}

module "logging" {
  source = "../../modules/logging"
  vpc_id = module.networking.vpc_id
  prefix = "poc-prod"
}
