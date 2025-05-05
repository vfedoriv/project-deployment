variable "source_db_name" {
  description = "The name of the source database."
  type        = string
  default     = "source-db"
}

variable "replica_db_name" {
  description = "The name of the replica database."
  type        = string
  default     = "replica-db"
}

variable "orchestrator_db_name" {
  description = "The name of the orchestrator database."
  type        = string
  default     = "orchestrator-db"
}

variable "region" {
  description = "The region where the database instances will be created."
  type        = string
}

variable "db_tier" {
  description = "The tier of the database instances."
  type        = string
  default     = "db-f1-micro"
}