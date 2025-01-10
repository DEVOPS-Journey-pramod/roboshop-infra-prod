variable "common_tags" {
  default = {
    Project     = "roboshop"
    Environment = "prod"
    Terraform   = "true"
  }
}

variable "tags" {
  default = {
    Component = "cart"
  }
}

variable "project_name" {
  default = "roboshop"
}
variable "environment" {
  default = "prod"
}

variable "zone_name" {
  default = "pka.in.net"
}
variable "iam_instance_profile" {
  default = "ShellScriptRoleForRoboshop"
}