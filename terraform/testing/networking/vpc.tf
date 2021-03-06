module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  enable_dns_hostnames = true
  name = "megalaboratorio-testing"
  cidr = "10.0.0.0/16"

  azs             = var.azs
  private_subnets = var.private_subnets_cidr
  intra_subnets = ["10.0.10.0/24", "10.0.11.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

#  enable_nat_gateway = true
#  single_nat_gateway = true
#  one_nat_gateway_per_az = false

  tags = {
    Terraform = "true"
    Environment = "testing"
  }
}
