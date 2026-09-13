data "terraform_remote_state" "core" {
  backend = "gcs"

  config = {
    bucket      = "cloud-terraform-lab-bucket"
    prefix      = "core/state"
    credentials = "../credentials/credentials.json"
  }
}