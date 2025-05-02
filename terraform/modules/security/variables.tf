variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "roles" {
  description = "IAM roles to assign to the security service account"
  type        = list(object({
    role = string
  }))
}