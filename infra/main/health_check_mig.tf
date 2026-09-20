resource "google_compute_health_check" "http_health_check" {
  project     = var.project_id
  name        = var.health_check_mig_name
  description = var.health_check_mig_description

  http_health_check {
    port         = 80
    request_path = "/index.html"
    proxy_header = "NONE"
  }

  check_interval_sec  = 10
  timeout_sec         = 5
  healthy_threshold   = 2
  unhealthy_threshold = 3

  log_config {
    enable = true
  }
}