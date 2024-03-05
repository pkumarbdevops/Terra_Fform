resource "aws_security_group" "Allow_All" {
    name = var.sg_name
    description = "allowing all ports" # you can keep this in variable

    ingress {   # Inbound
        description      = "Allowing all inbound traffic"
        from_port        = 0 # this is number
        to_port          = 0
        protocol         = "tcp"
        cidr_blocks      = var.sg_cidr
    }

    egress {    # OutBound
        from_port        = 0
        to_port          = 0
        protocol         = "-1" #all protocols
        cidr_blocks      = var.sg_cidr
    }
}