resource "aws_security_group" "sg_instance" {
    name = upper("${var.instance_name}-SG")

    vpc_id = var.vpc_id

    ingress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = local.tags.sg
}
