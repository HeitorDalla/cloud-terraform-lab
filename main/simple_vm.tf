resource "google_compute_instance" "simple_vm" {
  project      = var.project_id
  name         = var.vm_name
  description  = var.vm_description
  zone         = var.zone_gcp
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-13"
      size  = 10
    }
  }

  network_interface {
    network    = data.terraform_remote_state.core.outputs.network_id
    subnetwork = data.terraform_remote_state.core.outputs.subnet_id

    access_config {
      // cria um ip public efemero
    }
  }

  metadata_startup_script = file("${path.module}/scripts/startup-script.sh")

  tags = ["http", "https", "ssh"] // pegar as regras de firewall dessa tag
}