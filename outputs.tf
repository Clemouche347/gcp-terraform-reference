output "bucket_name" {
  description = "Name of the Cloud Storage bucket."
  value       = google_storage_bucket.main.name
}

output "bucket_url" {
  description = "gs:// URL of the bucket."
  value       = google_storage_bucket.main.url
}

output "network_id" {
  description = "ID of the VPC network."
  value       = google_compute_network.main.id
}

output "subnet_self_link" {
  description = "Self link of the subnet, used to attach VMs."
  value       = google_compute_subnetwork.main.self_link
}