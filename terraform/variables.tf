variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region to deploy resources"
  type        = string
  default     = "us-central1"
}

variable "network_name" {
  description = "The name of the VPC network"
  type        = string
}

variable "subnet_names" {
  description = "The names of the subnets in the VPC"
  type        = list(string)
}

variable "firewall_rules" {
  description = "Firewall rules to apply"
  type        = list(object({
    name        = string
    description = string
    priority    = number
    direction   = string
    action      = string
    ranges      = list(string)
    targets     = list(string)
  }))
}

variable "compute_instance_types" {
  description = "Instance types for compute nodes"
  type        = map(string)
}

variable "database_instance_types" {
  description = "Instance types for database nodes"
  type        = map(string)
}

variable "orchestrator_instance_type" {
  description = "Instance type for the orchestrator node"
  type        = string
}

variable "orchestrator_db_instance_type" {
  description = "Instance type for the orchestrator database"
  type        = string
}

variable "disk_sizes" {
  description = "Disk sizes for various components"
  type        = map(number)
}

variable "backup_bucket_name" {
  description = "Name of the Cloud Storage bucket for backups"
  type        = string
}
