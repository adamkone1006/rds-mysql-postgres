prov-region = "us-east-1"
vpc-cidr = "10.0.0.0/16"
sg-ingr-pts = [22,443,3306,3389]
sg-ingr-cidr = ["69.140.67.190/32"]

r-cnt =  1
db-pw = "123admin"
db-un = "admin"

###postgressql

allocated_storage_m           = 20
backup_retention_period_m     = 7
backup_window_m               =  "07:06-07:36"
engine_m                      = "postgres"
 engine_version_m             =  "13.3"

 final_snapshot_identifier_m  = false
 identifier_m                 = "postgressql01"
 instance_class_m             = "db.m5.large"
 maintenance_window_m         ="sun:03:11-sun:03:41"
 multi_az_m                   = false
 name_m                       = "rds-fanehero"
 password_m                   = "123admin"
 port_m                       = 5432
 publicly_accessible_m        = false
 storage_type_m               = "gp2"
 username_m                   = "admin"

