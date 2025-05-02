variable "network_name" {
  description = "The name of the VPC network"
  type        = string
}

variable "subnet_names" {
  description = "The names of the subnets in the VPC"
  type        = list(string)
}

variable "region" {
  description = "The region where the network will be created"
  type        = string
}
