module "vpc" {
    source = "git::https://github.com/SomeshwarSangaraju/terraform-aws-vpc.git"
    vpc_cidr= var.vpc_cidr
    vpc_tags= var.vpc_tags
    project_name = var.project_name
    environment = var.environment
    
    # public subnets
    public_subnet_cidrs = var.public_subnet_cidrs

    # private subnets
    private_subnet_cidrs = var.private_subnet_cidrs

    # database subnets
    database_subnet_cidrs = var.database_subnet_cidrs

    is_peering_required = true
}
