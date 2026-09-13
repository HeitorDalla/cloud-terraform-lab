resource "google_kms_key_ring" "keyring" {
  project  = var.project_id
  name     = var.keyring_name
  location = var.region_gcp
}

resource "google_kms_crypto_key" "symkey" {
  name                       = var.symkey_name
  key_ring                   = google_kms_key_ring.keyring.id
  purpose                    = "ENCRYPT_DECRYPT"
  rotation_period            = var.rotation_period
  destroy_scheduled_duration = var.destroy_scheduled_duration

  version_template {
    algorithm = "GOOGLE_SYMMETRIC_ENCRYPTION"
  }

  lifecycle {
    prevent_destroy = false // colocar TRUE para producao
  }
}