variable "project_id" {
  description = "The ID of the project in which resources will be created."
  type        = string
}

variable "region" {
  description = "The region where resources will be created."
  type        = string
  default     = "us-central1"
}

variable "zone_a" {
  description = "Zone A for high availability."
  type        = string
  default     = "us-central1-a"
}

variable "zone_b" {
  description = "Zone B for high availability."
  type        = string
  default     = "us-central1-b"
}

variable "zone_c" {
  description = "Zone C for high availability."
  type        = string
  default     = "us-central1-c"
}