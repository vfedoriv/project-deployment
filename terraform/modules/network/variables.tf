variable "network_name" {
  description = "The name of the VPC network."
  type        = string
  default     = "my-vpc-network"
}

variable "region" {
  description = "The region where the network will be created."
  type        = string
}

variable "subnet_a_cidr" {
  description = "CIDR range for subnet A."
  type        = string
  default     = "10.0.1.0/24"
}

variable "subnet_b_cidr" {
  description = "CIDR range for subnet B."
  type        = string
  default     = "10.0.2.0/24"
}

variable "subnet_c_cidr" {
  description = "CIDR range for subnet C."
  type        = string
  default     = "10.0.3.0/24"
}