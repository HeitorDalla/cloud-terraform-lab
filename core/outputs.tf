# VPC
output "network_id" {
  value = google_compute_network.vpc_global.id
}

# Subnets
output "subnet_id" {
  value = google_compute_subnetwork.subnet_web.id
}