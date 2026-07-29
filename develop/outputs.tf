output "get_new_namespace" {
  value         = resource.openshift_project.new-project
  description   = "Output current namespace"
}

