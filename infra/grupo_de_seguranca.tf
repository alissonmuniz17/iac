resource "aws_security_group" "acesso_geral" {
    name = "acesso_geral"
    description = "grupo do dev"
    ingress{
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        from_port = 0
        to_port = 0
        protocol = "-1"
    }
    egress{
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        from_port = 0
        to_port = 0
        protocol = "-1"
    }
    tags = {
       Name = "acesso_geral"
    }
}

resource "aws_security_group" "acesso_geral_prod" {
    name = "acesso_geral_prod"
    description = "grupo do dev"
    ingress{
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        from_port = 0
        to_port = 0
        protocol = "-1"
    }
    egress{
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        from_port = 0
        to_port = 0
        protocol = "-1"
    }
    tags = {
       Name = "acesso_geral_prod"
    }
}