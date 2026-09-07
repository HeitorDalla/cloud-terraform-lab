resource "google_compute_node_group" "nodes" {
  name          = var.node_group_name
  description   = var.node_group_description
  project       = var.project_id
  zone          = var.zone_gcp
  node_template = google_compute_node_template.template.id

  autoscaling_policy {
    mode      = "ONLY_SCALE_OUT"
    min_nodes = var.min_nodes
    max_nodes = var.max_nodes
  }

  maintenance_policy = "MIGRATE_WITHIN_NODE_GROUP"
  initial_size       = var.initial_node_count

  share_settings {
    share_type = "LOCAL"
  }
}
