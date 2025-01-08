data "aws_ssm_parameter" "app_alb_sg_id" {
    name  = "/${var.project_name}/${var.environment}/prod_app_alb_sg_id"
}
data "aws_ssm_parameter" "priavte_subnets_ids" {
  name = "/${var.project_name}/${var.environment}/prod_private_subnets_ids"
}