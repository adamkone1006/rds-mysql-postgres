module "rds-db-vpc--" {
  source = "./modules/rds-db-vpc+sng+pg"
  vpcA-cidr_block = var.vpc-cidr
  vpc-region = var.prov-region
  db-sn-ids = [module.rds-db-vpc--.tf_SN-APr.id, module.rds-db-vpc--.tf_SN-BPu.id]
}

module "rds-db-sg-" {
  source = "./modules/rds-db-sg"
  sg-vpc = module.rds-db-vpc--.tf-Avpc.id
  ingr-sg = var.sg-ingr-pts
  ingr-cidrs = var.sg-ingr-cidr
  db_sg_name = "A-db-sg"
}

module "rds-db-i" {
  count = var.r-cnt
  depends_on = [module.rds-db-sg-.A-sg, module.rds-db-vpc--]
  source = "./modules/rds-db-i"
  db-AZ  = module.rds-db-vpc--.tf_SN-APr.availability_zone
  db-sng-n = module.rds-db-vpc--.rds-db-sng.name
  p-word = var.db-pw
  rds-pg-n = module.rds-db-vpc--.rds-db-pg.name
  u-name = var.db-un
  db-sg-ids = [module.rds-db-sg-.A-sg.id]
  db-i-tag = "rds-db-i-xp-${count.index+1}"
}

module "postgressql" {
  source = "./modules/db-postgres"
  allocated_storage = var.allocated_storage_m
  availability_zone = module.rds-db-vpc--.tf_SN-APr.availability_zone
  backup_retention_period = var.backup_retention_period_m
  backup_window = var.backup_window_m
  db_subnet_group_name = module.rds-db-vpc--.rds-db-sng.name
  engine = var.engine_m
  engine_version = var.engine_version_m
  final_snapshot_identifier = var.final_snapshot_identifier_m
  identifier = var.identifier_m
  instance_class = var.instance_class_m
  maintenance_window = var.maintenance_window_m
  multi_az = var.multi_az_m
  name = var.name_m
  password = var.password_m
  port = var.port_m
  publicly_accessible = var.publicly_accessible_m
  security_group_names = [module.rds-db-sg-.A-sg.name]
  storage_type = var.storage_type_m
  username = var.username_m
  vpc_security_group_ids = [module.rds-db-sg-.A-sg.id]

}

