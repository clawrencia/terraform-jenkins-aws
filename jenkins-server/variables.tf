variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string

}

variable "public_subnets" {
  description = "The CIDR block for the public subnets"
  type        = list(string)
}

variable "instance_type" {
  description = "The type of instance to launch"
  type        = string
}