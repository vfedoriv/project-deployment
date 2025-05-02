variable "orchestrator_db_instance_name" {
  description = "The name of the Cloud SQL instance for Orchestrator."
  type        = string
  default     = "orchestrator-db"
}

variable "orchestrator_db_tier" {
  description = "The machine type for the Cloud SQL instance."
  type        = string
  default     = "db-n1-standard-1"
}

variable "orchestrator_db_disk_size" {
  description = "The disk size for the Cloud SQL instance."
  type        = number
  default     = 10
}

variable "region" {
  description = "The region where the Cloud SQL instance will be created."
  type        = string
}