module "network" {
  source  = "app.terraform.io/example-org-65d541/network/aws"
  version = "1.1.0"
  region = var.aws_region
}

variable "aws_region" {
  type = string
}

output "subnets" {
  value = {
    vpc_id = module.network.vpc
    public_subnets = module.network.public_subnets
  }
}