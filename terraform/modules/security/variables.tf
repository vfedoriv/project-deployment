variable "project_id" {
  description = "The ID of the project where IAM roles will be applied."
  type        = string
}

variable "iam_roles" {
  description = "A map of IAM roles and members."
  type        = map(object({
    role   = string
    member = string
  }))
}