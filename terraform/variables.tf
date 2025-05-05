variable "project_id" {
  description = "The ID of the project in which resources will be created."
  type        = string
}

variable "region" {
  description = "The region where resources will be created."
  type        = string
}

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

variable "db_tier" {
  description = "The tier of the database instances."
  type        = string
  default     = "db-f1-micro"
}