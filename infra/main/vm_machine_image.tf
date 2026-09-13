resource "google_compute_machine_image" "web" {
  provider    = google-beta
  project     = var.project_id
  name        = var.machine_image_name
  description = var.machine_image_description

  source_instance = google_compute_instance.web.self_link

  machine_image_encryption_key {
    kms_key_name = data.terraform_remote_state.core.outputs.kms_key
  }
}