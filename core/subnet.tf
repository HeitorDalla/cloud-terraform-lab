resource "google_compute_subnetwork" "subnet_web" {
  name          = var.subnet_name
  region        = var.region_gcp
  network       = google_compute_network.vpc_global.id
  ip_cidr_range = var.subnet_cidr // define o intervalo de IPs desta sub-rede
}