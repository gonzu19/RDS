resource "aws_db_instance" "database" {
    allocated_storage    = local.allocated_storage
    db_name              = var.dbname
    engine               = local.engine
    engine_version       = local.engine_version
    auto_minor_version_upgrade = true
    instance_class       =  local.instance_class # "db.t3.micro"
    username             = var.dbuser
    password             = var.dbpassword
    skip_final_snapshot  = true
    vpc_security_group_ids = [aws_security_group.allow_traffic.id]
    publicly_accessible = local.publicly_accessible
    }