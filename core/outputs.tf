# VPC
output "network_id" {
  value = google_compute_network.main.id
}

# Subnets
output "subnet_id" {
  value = google_compute_subnetwork.app.id
}

# KMS
output "kms_key" {
  value = google_kms_crypto_key.symkey.id
}