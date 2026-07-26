output "network_id" {
  value = google_compute_network.vpc_global.id
}

output "subnet_id" {
  value = google_compute_subnetwork.subnet_web.id
}