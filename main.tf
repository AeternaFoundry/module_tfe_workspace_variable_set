resource "tfe_workspace_variable_set" "workspace_variable_sets" {
  for_each = var.workspace_variable_sets

  variable_set_id = each.value.variable_set_id
  workspace_id    = each.value.workspace_id
}

