// Globais
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

// VM
variable "name_vm" {
  type        = string
  description = "Name vm para rodar servidor web"
}

variable "machine_type" {
  type        = string
  description = "Tipo de maquina que vai rodar a VM"
}

// Instance Template
variable "template_name" {
  type        = string
  description = "Nome do template para instancias VM"
}