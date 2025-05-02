variable "database_instance_types" {
  description = "Instance types for database nodes"
  type        = map(string)
}

variable "orchestrator_db_instance_type" {
  description = "Instance type for the orchestrator database"
  type        = string
}

variable "disk_sizes" {
  description = "Disk sizes for various components"
  type        = map(number)
}

variable "region" {
  description = "The region where the database instances will be created"
  type        = string
}