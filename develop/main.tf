terraform {
  required_providers {
    openshift = {
      source  = "llomgui/openshift"
      version = "1.1.0"
    }
  }
}

provider "openshift" {
  load_config_file = "false"

  host = 

  username = 
  password = 
}

resource "kubernetes_namespace" "openshift_project" {
  metadata {
    name = var.new_project_name

    # OpenShift-specific annotations for UI display names and descriptions
    annotations = {
      "openshift.io/description"  = "${var.environment} environment for core microservices."
      "openshift.io/display-name" = "${var.environment} Apps"
      "openshift.io/requester" = var.requested_user
    }

    # Optional labels for organizational structure or network policies
    labels = {
      "kubernetes.io/metadata.name"  = var.new_project_name
      environment = var.environment
      team        = var.new_project_team_name
    }
  }
}

