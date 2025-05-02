resource "google_project_iam_member" "assign_roles" {
  for_each = toset(var.iam_roles)

  project = var.project_id
  role    = each.value
  member  = var.members[0] # Assigning to the first member for simplicity
}