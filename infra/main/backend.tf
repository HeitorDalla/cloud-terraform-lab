terraform {
  backend "gcs" {
    bucket      = "cloud-terraform-lab-bucket"
    prefix      = "main/state"
    credentials = "../credentials/credentials.json"
  }
}