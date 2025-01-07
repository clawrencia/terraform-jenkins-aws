variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string

}

variable "private_subnets" {
  description = "The CIDR block for the private subnets"
  type        = list(string)
}

variable "public_subnets" {
  description = "The CIDR block for the public subnets"
  type        = list(string)
}