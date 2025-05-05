variable "zone_a" {
  description = "The zone for the primary managed instance group."
  type        = string
  default     = "us-central1-a"
}

variable "zone_b" {
  description = "The zone for the failover managed instance group."
  type        = string
  default     = "us-central1-b"
}

variable "machine_type" {
  description = "The machine type for the instances."
  type        = string
  default     = "n1-standard-1"
}

variable "target_size" {
  description = "The target size of the managed instance groups."
  type        = number
  default     = 1
}

variable "network_id" {
  description = "The ID of the network to attach instances to."
  type        = string
}

variable "primary_disk_id" {
  description = "The ID of the primary persistent disk."
  type        = string
}

variable "failover_disk_id" {
  description = "The ID of the failover persistent disk."
  type        = string
}