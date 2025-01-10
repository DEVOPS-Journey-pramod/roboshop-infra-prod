data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project_name}/${var.environment}/prod_vpc_id"
}

data "aws_ssm_parameter" "shipping_sg_id" {
  name = "/${var.project_name}/${var.environment}/prod_shipping_sg_id"
}

data "aws_ssm_parameter" "private_subnet_ids" {
  name = "/${var.project_name}/${var.environment}/prod_private_subnet_ids"
}

data "aws_ssm_parameter" "app_alb_listener_arn" {
  name = "/${var.project_name}/${var.environment}/prod_app_alb_listener_arn"
}