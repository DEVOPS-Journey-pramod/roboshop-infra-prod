#getting latest ami id automatically
data "aws_ami" "centos8" {
    owners = ["973714476881"]
    most_recent = true
    
     filter {
    name   = "name"
    values = ["Centos-8-DevOps-Practice"]
    }
    filter {
    name   = "root-device-type"
    values = ["ebs"]
    }

    filter {
    name   = "virtualization-type"
    values = ["hvm"]
    }
}

# reading the security group ids from ssm for db instances
data "aws_ssm_parameter" "mongodb_sg_id" {
  name = "/${var.project_name}/${var.environment}/prod_mongodb_sg_id"
}
data "aws_ssm_parameter" "redis_sg_id" {
  name = "/${var.project_name}/${var.environment}/prod_redis_sg_id"
}
data "aws_ssm_parameter" "mysql_sg_id" {
  name = "/${var.project_name}/${var.environment}/prod_mysql_sg_id"
}
data "aws_ssm_parameter" "rabbitmq_sg_id" {
  name = "/${var.project_name}/${var.environment}/prod_rabbitmq_sg_id"
}

# # reading the subnet ids from ssm for microservices instances
# data "aws_ssm_parameter" "catalogue_sg_id" {
#   name = "/${var.project_name}/${var.environment}/prod_catalogue_sg_id"
# }
# data "aws_ssm_parameter" "user_sg_id" {
#   name = "/${var.project_name}/${var.environment}/prod_user_sg_id"
# }
# data "aws_ssm_parameter" "cart_sg_id" {
#   name = "/${var.project_name}/${var.environment}/prod_cart_sg_id"
# }
# data "aws_ssm_parameter" "shipping_sg_id" {
#   name = "/${var.project_name}/${var.environment}/prod_shipping_sg_id"
# }
# data "aws_ssm_parameter" "payment_sg_id" {
#   name = "/${var.project_name}/${var.environment}/prod_payment_sg_id"
# }

# # reading the subnet ids from ssm for web instances
# data "aws_ssm_parameter" "web_sg_id" {
#   name = "/${var.project_name}/${var.environment}/prod_web_sg_id"
# }



# we will process this in locals
data "aws_ssm_parameter" "database_subnets_ids" {
  name = "/${var.project_name}/${var.environment}/prod_database_subnets_ids"
}

# data "aws_ssm_parameter" "private_subnets_ids" {
#   name = "/${var.project_name}/${var.environment}/prod_private_subnets_ids"
# }


# data "aws_ssm_parameter" "public_subnets_ids" {
#   name = "/${var.project_name}/${var.environment}/prod_public_subnets_ids"
# }

# we will use vpn sg id in ansible because vpn sg has 22 port and ansible needs 22 port
data "aws_ssm_parameter" "vpn_sg_id" {
  name  = "/${var.project_name}/${var.environment}/prod_vpn_sg_id"
}

# data sources for default vpc to ansible usage
data "aws_vpc" "default_vpc_info" {
  default = true
}

data "aws_subnet" "default_vpc_subnet" {
  vpc_id = data.aws_vpc.default_vpc_info.id
  availability_zone = "us-east-1a"
}
