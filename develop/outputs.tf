output "get_new_namespace" {
  value         = resource.kubernetes_namespace.openshift_project
  description   = "Output current namespace"
}

