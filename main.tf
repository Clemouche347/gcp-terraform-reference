resource "google_storage_bucket" "main" {
  name          = "${var.project_id}-storage" # globally unique
  location      = var.region
  storage_class = "STANDARD"

  uniform_bucket_level_access = true       # IAM only
  public_access_prevention    = "enforced" # never public

  force_destroy = true # allow destroy with objects inside (non-prod)
}

resource "google_compute_network" "main" {
  name                    = "main-vpc"
  auto_create_subnetworks = false # custom mode: subnets are declared explicitly
}

resource "google_compute_subnetwork" "main" {
  name          = "main-subnet-${var.region}"
  region        = var.region
  network       = google_compute_network.main.id
  ip_cidr_range = var.subnet_cidr

  private_ip_google_access = true # reach Google APIs without an external IP
}