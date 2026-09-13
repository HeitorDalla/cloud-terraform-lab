resource "google_compute_node_template" "sole_tenant" {
  project     = var.project_id
  name        = var.node_template_name
  description = var.node_template_description
  region      = var.region_gcp
  node_type   = var.node_type

  server_binding {
    type = "RESTART_NODE_ON_ANY_SERVER"
  }
}
