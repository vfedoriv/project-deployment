variable "iam_roles" {
  description = "List of IAM roles to be assigned."
  type        = list(string)
  default     = ["roles/compute.admin", "roles/storage.admin"]
}

variable "members" {
  description = "List of members to assign IAM roles to."
  type        = list(string)
}