resource "google_storage_bucket" "main" {
  name          = "${var.project_id}-storage" # globally unique
  location      = var.region
  storage_class = "STANDARD"

  uniform_bucket_level_access = true       # IAM only
  public_access_prevention    = "enforced" # never public

  force_destroy = true # allow destroy with objects inside (non-prod)

  labels = {
    managed_by = "terraform"
  }
}