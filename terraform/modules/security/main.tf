resource "google_project_iam_member" "project_roles" {
  for_each = var.iam_roles
  project  = var.project_id
  role     = each.value.role
  member   = each.value.member
}