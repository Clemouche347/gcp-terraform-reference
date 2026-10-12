variable "project_id" {
  description = "GCP project ID where resources are created."
  type        = string
}

variable "region" {
  description = "Default region for regional resources."
  type        = string
  default     = "us-central1" # free tier eligible
}

variable "subnet_cidr" {
  description = "Primary IPv4 range of the subnet."
  type        = string
  default     = "10.10.0.0/24"
}