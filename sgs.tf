resource "aws_security_group" "allow_traffic" {
    name        = "allow_traffic"
    description = "Allow traffic to the database"
    vpc_id      = var.vpc
}


resource "aws_vpc_security_group_ingress_rule" "allow_postgre_conexion2_inbound" {
    ip_protocol = "tcp"
    from_port         = 5432
    to_port           = 5432
    security_group_id = aws_security_group.allow_traffic.id
    cidr_ipv4 = "0.0.0.0/0"
}

resource "aws_vpc_security_group_egress_rule" "allow_postgre_conexion2_outbound" {
    ip_protocol = "tcp"
    from_port         = 5432
    to_port           = 5432
    security_group_id = aws_security_group.allow_traffic.id
    cidr_ipv4 = "0.0.0.0/0"
}