provider "google" {
  project     = var.project_id
  region      = var.region_gcp
  zone        = var.zone_gcp
  credentials = file("./credentials/credentials.json")
}