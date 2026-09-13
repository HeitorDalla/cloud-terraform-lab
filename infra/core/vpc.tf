resource "google_compute_network" "main" {
  project     = var.project_id
  name        = var.vpc_name
  description = var.vpc_description

  auto_create_subnetworks = false // para nao criar as subredes automaticas
}