# Create the internet gateway
# An internet gateway is responsible for allowing traffic in a VPC to the public internet.

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.startup_vpc.id

  tags = {
    Name = "Internet Gateway"
  }
}