
variable "identifier" {
  description = "provide your database identifier"
}

variable "allocated_storage" {
  description = "provide your allocated_storage"
}

variable "storage_type" {
  description = "provide your storage_type "
}

variable "engine" {
  description = "provide your engine type "
}

variable "engine_version" {
  description = "provide your engine_version "
}

variable "instance_class" {
  description = "provide your instance_class "
}
variable "name" {
  description = "provide your database name "
}

variable "username" {
  description = "provide your database username "
}

variable "password" {
  description = "provide your database password"
}
variable "port" {
  description = "provide your database port"
}

variable "publicly_accessible" {
  description = "is your database publicly_accessible "
}
variable "availability_zone" {
  description = "provide your database availability_zone "
}
variable "security_group_names" {
  description = "provide your security_group_names"
}
variable "vpc_security_group_ids" {
  description = "provide your vpc_security_group_ids"
}
variable "db_subnet_group_name" {
  description = "provide your db_subnet_group_name"
}

variable "multi_az" {
  description = "provide your multi_az"
}

variable "backup_retention_period" {
  description = "provide your backup_retention_period"
}
variable "backup_window" {
  description = "provide your backup_window"
}

variable "maintenance_window" {
  description = "provide your maintenance_window "
}
variable "final_snapshot_identifier" {
  description = "provide your final_snapshot_identifier "
}

