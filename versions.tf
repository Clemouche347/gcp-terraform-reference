terraform {
  required_version = ">= 1.9"

  required_providers {
    google = {
      source  = "hashicorp/google" # registry.terraform.io/hashicorp/google
      version = "~> 7.0"
    }
  }
}