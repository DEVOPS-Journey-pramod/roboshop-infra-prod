resource "aws_ssm_parameter" "vpn_sg_id" {
  name  = "/${var.project_name}/${var.environment}/prod_vpn_sg_id"
  type  = "String"
  value = module.vpn.sg_id
}

resource "aws_ssm_parameter" "mongodb_sg_id" {
  name  = "/${var.project_name}/${var.environment}/prod_mongodb_sg_id"
  type  = "String"
  value = module.mongodb.sg_id
}

resource "aws_ssm_parameter" "redis_sg_id" {
  name  = "/${var.project_name}/${var.environment}/prod_redis_sg_id"
  type  = "String"
  value = module.redis.sg_id
}

resource "aws_ssm_parameter" "mysql_sg_id" {
  name  = "/${var.project_name}/${var.environment}/prod_mysql_sg_id"
  type  = "String"
  value = module.mysql.sg_id
}

resource "aws_ssm_parameter" "rabbitmq_sg_id" {
  name  = "/${var.project_name}/${var.environment}/prod_rabbitmq_sg_id"
  type  = "String"
  value = module.rabbitmq.sg_id
}

resource "aws_ssm_parameter" "catalogue_sg_id" {
  name  = "/${var.project_name}/${var.environment}/prod_catalogue_sg_id"
  type  = "String"
  value = module.catalogue.sg_id
}

resource "aws_ssm_parameter" "user_sg_id" {
  name  = "/${var.project_name}/${var.environment}/prod_user_sg_id"
  type  = "String"
  value = module.user.sg_id
}

resource "aws_ssm_parameter" "cart_sg_id" {
  name  = "/${var.project_name}/${var.environment}/prod_cart_sg_id"
  type  = "String"
  value = module.cart.sg_id
}

resource "aws_ssm_parameter" "shipping_sg_id" {
  name  = "/${var.project_name}/${var.environment}/prod_shipping_sg_id"
  type  = "String"
  value = module.shipping.sg_id
}

resource "aws_ssm_parameter" "payment_sg_id" {
  name  = "/${var.project_name}/${var.environment}/prod_payment_sg_id"
  type  = "String"
  value = module.payment.sg_id
}

resource "aws_ssm_parameter" "web_sg_id" {
  name  = "/${var.project_name}/${var.environment}/prod_web_sg_id"
  type  = "String"
  value = module.web.sg_id
}

resource "aws_ssm_parameter" "app_alb_sg_id" {
  name  = "/${var.project_name}/${var.environment}/prod_app_alb_sg_id"
  type  = "String"
  value = module.app_alb.sg_id
}

resource "aws_ssm_parameter" "web_alb_sg_id" {
  name  = "/${var.project_name}/${var.environment}/prod_web_alb_sg_id"
  type  = "String"
  value = module.web_alb.sg_id
}