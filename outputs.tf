output "endpoint" {
    value = aws_db_instance.database.endpoint
}

output "security_group_ids" {
    value = aws_db_instance.database.vpc_security_group_ids
}