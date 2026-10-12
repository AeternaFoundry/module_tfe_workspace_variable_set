variable "workspace_variable_sets" {
  description = <<EOT
Map of workspace_variable_sets, attributes below
Required:
    - variable_set_id
    - workspace_id
EOT

  type = map(object({
    variable_set_id = string
    workspace_id    = string
  }))
}

