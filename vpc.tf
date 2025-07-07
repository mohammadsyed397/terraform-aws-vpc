resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"
  enable_dns_hostnames = "true"
  tags = merge(
    var.vpc_tags,
    local.common_tags,
    {
        Name = "${var.project}-${var.environment}"
    }
  )
}
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = merge(
    var.vpc_tags,
    local.common_tags,
    {
        Name = "${var.project}-${var.environment}"
    }
  )
}
resource "aws_subnet" "public" {
    count = length(var.public_cidr_blocks) 
  vpc_id     = aws_vpc.main.id
  cidr_block =var.public_cidr_blocks.id[count.index]
  map_public_ip_on_launch = "true"
  availability_zone = local.az_names[count.index]

  tags = merge(
    var.public_subnet_tags,
    local.common_tags,
    {
      Name = "${var.project}-${var.environment}-public-${local.az_names[count.index]}"
    }
  )
  }

