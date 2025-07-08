variable "cidr_block" {
    default = ["10.0.0/16"]
  
}

variable "project" {
    type = string
  
}
variable "environment" {
    type = string
}
variable "vpc_tags" {
    type = map(string)
    default = {}
    
}
variable "igw_tags"{
    type = map(string)
}
variable "public_cidr_blocks"{
    type = list(string)
}

variable "public_subnet_tags" {
    type = map(string)
    default = {}
}

variable "private_cidr_blocks" {
    type = list(string)
}
variable "private_subnet_tags" {
    type = map(string)
    default = {}
}
variable "database_subnet_blocks"{
    type = list(string)
    
    
}
variable "database_subnet_tags" {
    type = map(string)
    default = {}
}
variable "eip_tags"{
    type = map(string)
    default = {}
}
variable "nat_gateway_tags" {
    type = map(string)
    default = {}
}
variable "public_route_table_tags" {
    type = map(string)
    default = {}
}
variable "private_route_table_tags" {
    type = map(string)
    default = {}
}
variable "database_route_table_tags" {
    type = map(string)
    default = {}
}