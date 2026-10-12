output "bucket_name" {
  description = "Name of the Cloud Storage bucket."
  value       = google_storage_bucket.main.name
}

output "bucket_url" {
  description = "gs:// URL of the bucket."
  value       = google_storage_bucket.main.url
}