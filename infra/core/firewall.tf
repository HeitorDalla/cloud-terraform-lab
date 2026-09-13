resource "google_compute_firewall" "allow_http" {
  project     = var.project_id
  name        = var.http_firewall_name
  description = var.http_firewall_description
  network     = google_compute_network.main.id

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  target_tags = ["http"]

  source_ranges = ["0.0.0.0/0"] // o trafego pode vir de qualquer lugar da internet
}

resource "google_compute_firewall" "allow_https" {
  project     = var.project_id
  name        = var.https_firewall_name
  description = var.https_firewall_description
  network     = google_compute_network.main.id

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  target_tags = ["https"]

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow_ssh" {
  project     = var.project_id
  name        = var.ssh_firewall_name
  description = var.ssh_firewall_description
  network     = google_compute_network.main.id

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  target_tags = ["ssh"]

  source_ranges = ["0.0.0.0/0"]
}