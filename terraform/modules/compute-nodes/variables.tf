variable "source_machine_type" {
  description = "Machine type for the source instance."
  type        = string
  default     = "n1-standard-4"
}

variable "source_image" {
  description = "Image for the source instance."
  type        = string
  default     = "debian-cloud/debian-11"
}

variable "source_disk_size" {
  description = "Disk size for the source instance."
  type        = number
  default     = 50
}

variable "replica_machine_type" {
  description = "Machine type for the replica instance."
  type        = string
  default     = "n1-standard-4"
}

variable "replica_image" {
  description = "Image for the replica instance."
  type        = string
  default     = "debian-cloud/debian-11"
}

variable "replica_disk_size" {
  description = "Disk size for the replica instance."
  type        = number
  default     = 50
}

variable "network_id" {
  description = "The ID of the network to attach instances to."
  type        = string
}

variable "subnet_a_id" {
  description = "The ID of subnet A."
  type        = string
}

variable "subnet_b_id" {
  description = "The ID of subnet B."
  type        = string
}

variable "zone_a" {
  description = "Zone A for the source instance."
  type        = string
}

variable "zone_b" {
  description = "Zone B for the replica instance."
  type        = string
}