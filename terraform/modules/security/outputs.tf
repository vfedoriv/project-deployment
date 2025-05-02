output "iam_roles_assigned" {
  description = "The IAM roles assigned to the members."
  value       = google_project_iam_member.assign_roles.*.role
}