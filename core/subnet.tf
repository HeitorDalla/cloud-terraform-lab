resource "google_compute_subnetwork" "app" {
  project     = var.project_id
  name        = var.subnet_name
  description = var.subnet_description
  region      = var.region_gcp
  network     = google_compute_network.main.id

  ip_cidr_range = var.subnet_cidr // define o intervalo de IPs desta sub-rede
}