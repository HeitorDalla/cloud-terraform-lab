resource "google_compute_firewall" "allow_http" {
  project = var.project_id
  name    = var.firewall_name_http
  network = google_compute_network.vpc_global.name

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  target_tags = ["http"]

  source_ranges = ["0.0.0.0/0"] // o trafego pode vir de qualquer lugar da internet
}

resource "google_compute_firewall" "allow_https" {
  project = var.project_id
  name    = var.firewall_name_https
  network = google_compute_network.vpc_global.name

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  target_tags = ["https"]

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow_ssh" {
  project = var.project_id
  name    = var.firewall_name_ssh
  network = google_compute_network.vpc_global.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  target_tags = ["ssh"]

  source_ranges = ["0.0.0.0/0"]
}