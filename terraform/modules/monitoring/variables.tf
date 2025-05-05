variable "machine_type" {
  description = "The machine type for the monitoring instances."
  type        = string
  default     = "n1-standard-1"
}

variable "zone" {
  description = "The zone where the monitoring instances will be created."
  type        = string
  default     = "us-central1-a"
}

variable "network_id" {
  description = "The ID of the network to attach instances to."
  type        = string
}