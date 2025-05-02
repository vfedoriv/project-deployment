output "security_service_account_email" {
  value = google_service_account.security_sa.email
}

output "security_roles" {
  value = google_project_iam_member.security_roles[*].role
}