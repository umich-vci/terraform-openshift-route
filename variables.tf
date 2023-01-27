variable "insecure_edge_termination_policy" {
  type        = string
  description = "The insecure edge termination policy."
  default     = "Redirect"

  validation {
    condition     = contains(["Redirect", "Allow", "Disable"], var.insecure_edge_termination_policy)
    error_message = "Must be one of \"Redirect\", \"Allow\", or \"Disable\"."
  }
}

variable "name" {
  type        = string
  description = "The name of the OpenShift route"
}
variable "namespace" {
  type        = string
  description = "The name of the namespace to create the OpenShift route in"
}

variable "service" {
  type        = string
  description = "The name of the service to route to"
}

variable "target_port" {
  type        = string
  description = "The target port of the service to route to"
}
