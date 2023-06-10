# Define the VPC
# Define the VPC resource for the startup and assigned a CIDR block of 10.0.0.0/16 to the VPC. This means IP addresses that fall within 
# this range can be assigned to resources used in this VPC.

resource "aws_vpc" "startup_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "Startup VPC"
  }
}