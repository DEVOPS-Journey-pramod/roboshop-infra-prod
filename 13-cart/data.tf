
data "aws_ssm_parameter" "vpc_id" {
    name  =  "/${var.project_name}/${var.environment}/prod_vpc_id"
}

data "aws_ssm_parameter" "cart_sg_id" {
    name  = "/${var.project_name}/${var.environment}/prod_cart_sg_id"
}

data "aws_ssm_parameter" "private_subnets_ids" {
    name  = "/${var.project_name}/${var.environment}/prod_private_subnets_ids"
}
data "aws_ssm_parameter" "app_alb_listner_arn" {
    name  = "/${var.project_name}/${var.environment}/prod_app_alb_listner_arn"
}
