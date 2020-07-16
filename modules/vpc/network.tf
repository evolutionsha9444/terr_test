resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cdir
  instance_tenancy = var.tenancy

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "public_main_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr1

  tags = {
    Name = "public_main_subnet"
  }
}

resource "aws_subnet" "private_main_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr2

  tags = {
    Name = "private_main_subnet"
  }
}

output "vpc_id" {
  value       = aws_vpc.main.id
  description = "Output of the vp_id generated"
}

output "subnet_id" {
  value       = aws_subnet.public_main_subnet.id
  description = "public subnet_id"
}

output "priv_subnet_id" {
  value       = aws_subnet.private_main_subnet.id
  description = "public subnet_id"
}