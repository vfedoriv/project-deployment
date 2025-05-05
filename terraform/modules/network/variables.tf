variable "network_name" {
  description = "The name of the private network."
  type        = string
  default     = "private-network"
}

variable "subnet_name" {
  description = "The name of the private subnet."
  type        = string
  default     = "private-subnet"
}

variable "subnet_cidr" {
  description = "The CIDR range for the private subnet."
  type        = string
  default     = "10.0.0.0/16"
}

variable "region" {
  description = "The region where the network will be created."
  type        = string
}