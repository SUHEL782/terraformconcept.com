# dev infrastructure

module "dev-infra" {
  source = "./infra"

  env                = "dev"
  aws_instance_type  = "t2.micro"
  aws_instance_count = 1
}

# qa infrastructure
module "qa-infra" {
  source = "./infra"

  env                = "qa"
  aws_instance_type  = "t2.micro"
  aws_instance_count = 1
}
# prod infrastructure
module "prod-infra" {
  source = "./infra"

  env                = "prod"
  aws_instance_type  = "t2.micro"
  aws_instance_count = 1
}

output "dev_infra_ec2_public_ip" {
  value = module.dev-infra.ec2_public_ip
  
}
output "qa_infra_ec2_public_ip" {
  value = module.qa-infra.ec2_public_ip
  
}
output "prod_infra_ec2_public_ip" {
  value = module.prod-infra.ec2_public_ip
  
}