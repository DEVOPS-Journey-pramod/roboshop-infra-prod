resource "aws_ssm_parameter" "web_alb_listner_arn" {
  name  = "/${var.project_name}/${var.environment}/prod_web_alb_listner_arn"
  type  = "String"
  value = aws_lb_listener.https.arn
}   