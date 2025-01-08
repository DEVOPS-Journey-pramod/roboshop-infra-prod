variable "project_name" {
  default = "roboshop"
}

variable "environment" {
  default = "prod"
}

variable "iam_instance_profile" {
  default = "ec2-role-shell-script"
}

variable "common_tags" {
  default = {
    Project     = "roboshop"
    Environment = "prod"
    Terraform   = "true"
  }
}

variable "tags" {
  default = {
    Componenet = "shipping"
  }
}

variable "zone_name" {
  default = "pka.in.net"
}
