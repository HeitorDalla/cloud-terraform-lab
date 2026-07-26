resource "google_compute_network" "vpc_global" {
  project                 = var.project_id
  name                    = var.vpc_name
  auto_create_subnetworks = false // para nao criar as subredes automaticas
}