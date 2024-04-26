provider "aws" {
  region = "sa-east-1"
}

resource "aws_db_instance" "{{dbname}}" {
  db_name        = "{{dbname}}"
  allocated_storage = 20
  engine            = "postgres"
  engine_version    = "16"
  instance_class    = "db.t4g.large"
  username          = "postgres"
  password          = "password_with_sp&cial_char"
  storage_encrypted = true

  tags = {
    Name = "{{dbname}}"
  }
}

output "rds-conn-host" {
  value = aws_db_instance.{{dbname}}.endpoint
}

output "rds-conn-user" {
  value = aws_db_instance.{{dbname}}.username
}

output "rds-conn-name" {
  value = aws_db_instance.{{dbname}}.db_name
}

output "rds-conn-pass" {
  value = aws_db_instance.{{dbname}}.password
  sensitive = true
}

output "rds-conn-engine" {
  value = aws_db_instance.{{dbname}}.engine
}

output "rds-conn-engine_version" {
  value = aws_db_instance.{{dbname}}.engine_version
}

output "rds-conn-port" {
  value = aws_db_instance.{{dbname}}.port
}
