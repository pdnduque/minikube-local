variable "environment" {
	  description = "Develop Environment"
	  type        = string
	  default     = "develop"
}

variable "new_project_name" {
	  description = "Name of the new project from Terraform"
	  type        = string
    default     = "my-tf-project-name-009"
}


variable "new_project_team_name" {
	  description = "Team name assigned from Terraform"
	  type        = string
    default     = "backend-team-009"
}

variable "requested_user" {
  description = "User name requested"
  type        = string
  default     = "developer"
}


variable "hostname" {
  type    = string
  default = "default-value"
}

variable "usr" {
  type        = string
  description = "The username for the cluster"
  sensitive   = true
}

variable "pwd" {
  type        = string
  description = "The password for the cluster "
  sensitive   = true
}

