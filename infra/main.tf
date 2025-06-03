terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = var.regiao_aws
}

resource "aws_instance" "app_server" {
  ami           = "ami-075686beab831bb7f"
  instance_type = var.instancia
  key_name      = var.chave
  vpc_security_group_ids = [aws_security_group.acesso_geral_prod.id]

  tags = {
    Name = "Terraform ansible python"
  }
}

resource "aws_key_pair" "chaveSSH"{
   key_name= "IaC-Prod"
   public_key= file("${var.chave}.pub")

}

output "IP_publico" {
  value = aws_instance.app_server.public_ip
    
  }