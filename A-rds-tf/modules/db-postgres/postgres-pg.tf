
resource "aws_db_parameter_group" "postgres-pg" {
  name   = "postgres-pg"
  family = "postgres13"
  description = "rds-db PostgresSQL 13.3 parameter group"

  tags = {
    Name = "postgres-pg"
  }
}