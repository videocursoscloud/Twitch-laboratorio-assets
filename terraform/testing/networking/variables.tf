variable "vpc_cidr"{}
variable "azs"{type=list}
variable "private_subnets_cidr"{type=list}
variable "intra_subnets_cidr"{type=list}
variable "public_subnets_cidr"{type=list}
variable "region"{}