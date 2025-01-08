variable "common_tags" {
    default = {
        Project = "roboshop"
        Environment = "prod"
        Terraform = true
    }
}

variable "tags" {
    default = {
        Componenet = "catalogue"
    }
}

variable "project_name" {
    default = "roboshop"
    type = string
}

variable "environment" {
    default = "prod"
    type = string
}

variable "zone_name" {
    default = "pka.in.net"
    type = string
}