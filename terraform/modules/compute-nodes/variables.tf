variable "compute_instance_types" {
  description = "Instance types for compute nodes"
  type        = map(string)
}

variable "orchestrator_instance_type" {
  description = "Instance type for the orchestrator node"
  type        = string
}

variable "network" {
  description = "The name of the network to attach instances"
  type        = string
}

variable "subnet_names" {
  description = "The names of the subnets in the VPC"
  type        = list(string)
}

variable "zones" {
  description = "The zones where the instances will be deployed"
  type        = list(string)
}