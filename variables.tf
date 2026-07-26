// Variaveis globais
variable "project_id" {
  type        = string
  description = "Project id"
}

variable "region_gcp" {
  type        = string
  description = "Region gcp"
}

variable "zone_gcp" {
  type        = string
  description = "Zone gcp"
}

// Variaveis VM
variable "name_vm" {
  type        = string
  description = "Name vm para rodar servidor web"
}

variable "machine_type" {
  type        = string
  description = "Tipo de maquina que vai rodar a VM"
}