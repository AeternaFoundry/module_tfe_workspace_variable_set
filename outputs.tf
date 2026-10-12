output "workspace_variable_sets_id" {
  description = "Map of id values across all workspace_variable_sets, keyed the same as var.workspace_variable_sets except keys with no id are omitted"
  value       = { for k, v in tfe_workspace_variable_set.workspace_variable_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workspace_variable_sets_variable_set_id" {
  description = "Map of variable_set_id values across all workspace_variable_sets, keyed the same as var.workspace_variable_sets except keys with no variable_set_id are omitted"
  value       = { for k, v in tfe_workspace_variable_set.workspace_variable_sets : k => v.variable_set_id if v.variable_set_id != null && length(v.variable_set_id) > 0 }
}
output "workspace_variable_sets_workspace_id" {
  description = "Map of workspace_id values across all workspace_variable_sets, keyed the same as var.workspace_variable_sets except keys with no workspace_id are omitted"
  value       = { for k, v in tfe_workspace_variable_set.workspace_variable_sets : k => v.workspace_id if v.workspace_id != null && length(v.workspace_id) > 0 }
}

