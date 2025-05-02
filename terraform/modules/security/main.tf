resource "google_service_account" "security_sa" {
  account_id   = "security-service-account"
  display_name = "Security Service Account"
}

resource "google_project_iam_member" "security_roles" {
  count = length(var.roles)

  project = var.project_id
  role    = var.roles[count.index].role
  member  = "serviceAccount:${google_service_account.security_sa.email}"
}