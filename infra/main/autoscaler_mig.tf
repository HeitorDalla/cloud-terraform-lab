resource "google_compute_region_autoscaler" "regional_mig" {
  project = var.project_id
  region  = var.region_gcp
  name    = var.autoscaler_name

  target = google_compute_region_instance_group_manager.appserver.id

  autoscaling_policy {
    mode         = "ON"
    min_replicas = var.mig_min_replicas
    max_replicas = var.mig_max_replicas

    cooldown_period      = 60
    stabilization_period = 300

    cpu_utilization {
      target            = var.autoscaler_cpu_target
      predictive_method = "OPTIMIZE_AVAILABILITY"
    }
  }
}