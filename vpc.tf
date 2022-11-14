resource "aws_vpc" "ProjectVpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Project VPC"
  }
}

#SUBNET CODE

resource "aws_subnet" "Websubnet-1" {
  vpc_id                  = "${aws_vpc.ProjectVpc.id}"
  cidr_block             = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = "ap-south-1a"

  tags = {
    Name = "Subnet 1"
  }
}

resource "aws_subnet" "Websubnet-2" {
  vpc_id                  = "${aws_vpc.ProjectVpc.id}"
  cidr_block             = "10.0.2.0/24"
  map_public_ip_on_launch = true
  availability_zone = "ap-south-1b"

  tags = {
    Name = "Subnet 2"
  }
}

resource "aws_subnet" "Appsubnet-1" {
  vpc_id                  = "${aws_vpc.ProjectVpc.id}"
  cidr_block             = "10.0.3.0/24"
  map_public_ip_on_launch = false
  availability_zone = "ap-south-1a"

  tags = {
    Name = "App Subnet 1"
  }
}
