resource "aws_db_instance" "postgres_database" {
    identifier                = var.identifier
    allocated_storage         = var.allocated_storage
    storage_type              = var.storage_type
    engine                    = var.engine
    engine_version            = var.engine
    instance_class            = var.instance_class
    name                      = var.name
    username                  = var.username
    password                  = var.password
    port                      = var.port
    publicly_accessible       = var.publicly_accessible
    availability_zone         = var.availability_zone
    security_group_names      = var.security_group_names
    vpc_security_group_ids    = var.vpc_security_group_ids
    db_subnet_group_name      = var.db_subnet_group_name
    parameter_group_name      = aws_db_parameter_group.postgres-pg.name
    multi_az                  = var.multi_az
    backup_retention_period   = var.backup_retention_period
    backup_window             = var.backup_window
    maintenance_window        = var.maintenance_window
    final_snapshot_identifier = var.final_snapshot_identifier


}