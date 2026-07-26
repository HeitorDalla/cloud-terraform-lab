terraform {
  backend "gcs" {
    bucket      = "cloud-terraform-lab-bucket"
    prefix      = "core/state"
    credentials = "./credentials/credentials.json"
  }
}