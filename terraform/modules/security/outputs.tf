output "iam_roles" {
  description = "The IAM roles applied to the project."
  value       = google_project_iam_member.project_roles
}