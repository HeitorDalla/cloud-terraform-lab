resource "google_compute_region_instance_template" "tpl" {
  project      = var.project_id
  region       = var.region_gcp
  name         = var.template_name
  machine_type = var.machine_type

  disk {
    source_image = "debian-cloud/debian-13"
    auto_delete  = true
    disk_size_gb = 10
    boot         = true
  }

  network_interface {
    network    = data.terraform_remote_state.core.outputs.network_id
    subnetwork = data.terraform_remote_state.core.outputs.subnet_id

    access_config {
      // Gerar um IP efemero
    }
  }

  metadata_startup_script = file("${path.module}/scripts/startup-script.sh")

  tags = ["http", "https", "ssh"]
}