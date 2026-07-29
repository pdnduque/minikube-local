
resource "openshift_project" "new-project" {
  metadata {
    annotations = {
      "openshift.io/description" = "${var.environment} environment for core microservices."
      "openshift.io/display-name" = "${var.environment} Apps"
      "openshift.io/requester" = var.requested_user
    }

    name = var.new_project_name
    # Optional labels for organizational structure or network policies
    labels = {
      "kubernetes.io/metadata.name"  = var.new_project_name
      environment = var.environment
      team        = var.new_project_team_name
    }
  }

  lifecycle {
    ignore_changes = [metadata[0].annotations]
  }
}


