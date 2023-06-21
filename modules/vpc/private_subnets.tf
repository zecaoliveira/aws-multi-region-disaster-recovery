resource "aws_subnet" "private_subnet_1a" {
  vpc_id = aws_vpc.main.id

  cidr_block              = var.private_subnet_1a
  map_public_ip_on_launch = true
  availability_zone       = format("%sa", data.aws_region.current.name)

  tags = {
    "Name" = format("%s-private-%sa", var.project_name, data.aws_region.current.name)
  }
}

resource "aws_subnet" "private_subnet_1b" {
  vpc_id = aws_vpc.main.id

  cidr_block              = var.private_subnet_1b
  map_public_ip_on_launch = true
  availability_zone       = format("%sb", data.aws_region.current.name)

  tags = {
    "Name" = format("%s-private-%sb", var.project_name, data.aws_region.current.name)
  }
}

resource "aws_subnet" "private_subnet_1c" {
  vpc_id = aws_vpc.main.id

  cidr_block              = var.private_subnet_1c
  map_public_ip_on_launch = true
  availability_zone       = format("%sc", data.aws_region.current.name)

  tags = {
    "Name" = format("%s-private-%sc", var.project_name, data.aws_region.current.name)
  }
}

resource "aws_route_table_association" "private_1a" {
  subnet_id      = aws_subnet.private_subnet_1a.id
  route_table_id = aws_route_table.nat.id
}

resource "aws_route_table_association" "private_1b" {
  subnet_id      = aws_subnet.private_subnet_1b.id
  route_table_id = aws_route_table.nat.id
}

resource "aws_route_table_association" "private_1c" {
  subnet_id      = aws_subnet.private_subnet_1c.id
  route_table_id = aws_route_table.nat.id
}