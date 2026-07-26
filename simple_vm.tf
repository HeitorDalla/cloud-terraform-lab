resource "google_compute_instance" "simple_vm" {
  project      = var.project_id
  name         = var.name_vm
  zone         = var.zone_gcp
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
      size  = 10
    }
  }

  network_interface {
    network    = google_compute_network.vpc_global.id
    subnetwork = google_compute_subnetwork.subnet_web.id

    access_config {
      // cria um ip public efemero
    }
  }

  metadata_startup_script = file("${path.module}/scripts/startup-script.sh")

  tags = ["http", "https", "ssh"] // pegar as regras de firewall dessa tag
}