resource "google_compute_region_instance_group_manager" "appserver" {
  project     = var.project_id
  region      = var.region_gcp
  name        = var.instance_group_name_from_template
  description = var.instance_group_description_from_template

  distribution_policy_zones = var.mig_zones

  base_instance_name = var.base_instance_name_img

  version {
    instance_template = google_compute_region_instance_template.web.self_link
  }

  auto_healing_policies {
    health_check      = google_compute_health_check.http_health_check.id
    initial_delay_sec = 150
  }

  instance_lifecycle_policy {
    default_action_on_failure = "REPAIR"
    force_update_on_repair    = "YES"
  }

  named_port {
    name = "webserver"
    port = 80
  }
}