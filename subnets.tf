# Define the subnets
# In order to ensure high availability, 2 subnets were chosen in which the web servers were deployed and the subnets were placed in the 
# created VPC which is defined below.
# Private subnets are used to house resources such as databases and other services that should not be accessible by the pubic.
# The private subnets used in this project were used to house the database instances created because access to a database should not be 
# allowed over the internet except otherwise stated.


data "aws_availability_zones" "available" {}
resource "random_integer" "random" {
  min = 1
  max = 100
}

resource "random_shuffle" "public_az" {
  input        = data.aws_availability_zones.available.names
  result_count = 10
}
resource "aws_subnet" "web_server_subnet_1" {
  vpc_id = aws_vpc.startup_vpc.id
  availability_zone     = "us-east-1a"
  cidr_block = "10.0.8.0/24"
  map_public_ip_on_launch = true
  
  tags = {
    Name = "Web Server Subnet - 1"
  }
}

resource "aws_subnet" "web_server_subnet_2" {
  vpc_id = aws_vpc.startup_vpc.id
  availability_zone     = "us-east-1a"
  cidr_block = "10.0.6.0/24"
  map_public_ip_on_launch = true
  
  tags = {
    Name = "Web Server Subnet - 2"
  }
}



resource "aws_subnet" "database_subnet_1" {
  vpc_id = aws_vpc.startup_vpc.id
  cidr_block = "10.0.5.0/24"
  map_public_ip_on_launch = false
  availability_zone = "us-east-1a"

  tags = {
    Name = "Database Subnet 1"
  }
}

resource "aws_subnet" "database_subnet_2" {
  vpc_id = aws_vpc.startup_vpc.id
  map_public_ip_on_launch = false
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Database Subnet 2"
  }
}