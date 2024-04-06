resource "aws_security_group" "allow_traffic" {
    name        = "allow_traffic"
    description = "Allow traffic to the database"
    vpc_id      = var.vpc
}

resource "aws_security_group_rule" "ingress_tcp" {
    type              = "ingress"
    from_port         = 0
    to_port           = 0
    protocol          = "tcp"
    security_group_id = aws_security_group.allow_traffic.id
    cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "egress_tcp" {
    type              = "egress"
    from_port         = 0
    to_port           = 0
    protocol          = "tcp"
    security_group_id = aws_security_group.allow_traffic.id
    cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "ingress_icmp" {
    type              = "ingress"
    from_port         = 0
    to_port           = 0
    protocol          = "icmp"
    security_group_id = aws_security_group.allow_traffic.id
    cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "egress_icmp" {
    type              = "egress"
    from_port         = 0
    to_port           = 0
    protocol          = "icmp"
    security_group_id = aws_security_group.allow_traffic.id
    cidr_blocks       = ["0.0.0.0/0"]
}