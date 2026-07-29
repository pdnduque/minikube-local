variable "environment" {
	  description = "Develop Environment"
	  type        = string
	  default     = "develop"
}

variable "new_project_name" {
	  description = "Name of the new project from Terraform"
	  type        = string
    default     = "my-first-tf-project"
}


variable "new_project_team_name" {
	  description = "Team name assigned from Terraform"
	  type        = string
    default     = "backend-team"
}

variable "requested_user" {
  description = "User name requested"
  type        = string
  default     = "developer"
}

