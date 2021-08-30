variable "prov-region" {
  type = string
  description = "profile region"
  default = "us-east-1"
}
variable "vpc-cidr" {
  type = string
  description = "vpc cidr block"
}
variable "sg-ingr-pts" {
  type = list(number)
  description = "List of Security group ingress ports"
}
variable "sg-ingr-cidr" {
  type = list(string)
  description = "List of Security group Permitted network cidr blocks"
}

variable "r-cnt" {
  type = number
  description = "# of resources and count"
  default = 2
}
variable "db-pw" {
  type = string
  description = "master pw for db"
}
variable "db-un" {
  type = string
  description = "master un for db"
}

variable "allocated_storage_m" {}
variable "backup_retention_period_m" {}
variable "backup_window_m" {}
variable "engine_m" {}
variable "engine_version_m" {}
variable "final_snapshot_identifier_m" {}
variable "identifier_m" {}
variable "instance_class_m" {}
variable "maintenance_window_m" {}
variable "multi_az_m" {}
variable "name_m" {}
variable "password_m" {}
variable "port_m" {}
variable "publicly_accessible_m" {}
variable "storage_type_m" {}
variable "username_m" {}
