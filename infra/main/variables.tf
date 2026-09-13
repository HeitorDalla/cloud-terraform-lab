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
variable "vm_name" {
  type        = string
  description = "Nome da VM para rodar servidor web"
}

variable "vm_description" {
  type        = string
  description = "Descricao da VM"
}

variable "machine_type" {
  type        = string
  description = "Tipo de maquina que vai rodar a VM"
}

// Instance Template
variable "instance_template_name" {
  type        = string
  description = "Nome do template para instancias VM"
}

variable "instance_template_description" {
  type        = string
  description = "Descricao do template usado para criar grupos de instancia"
}

// Node Template
variable "node_template_name" {
  type        = string
  description = "Nome do template da maquina"
}

variable "node_template_description" {
  type        = string
  description = "Nome do template da maquina"
}

variable "node_type" {
  type        = string
  description = "Tipo de maquina locataria"
}

// Sole Tenant Node
variable "node_group_name" {
  type        = string
  description = "Nome do grupo de maquinas"
}

variable "node_group_description" {
  type        = string
  description = "Descricao do grupo de maquinas locatarias"
}

variable "min_nodes" {
  type        = number
  description = "Minimo de maquina no grupo"

  validation {
    condition     = var.min_nodes >= 0
    error_message = "O minimo de maquinas locatarias precisa ser maior ou igual a 0"
  }
}

variable "max_nodes" {
  type        = number
  description = "Maximo de maquina no grupo"

  validation {
    condition     = var.max_nodes <= 100 && var.max_nodes >= var.min_nodes
    error_message = "O maximo de maquinas precisa ser maior ou igual ao minimo de maquinas e menor do que 100"
  }
}

variable "initial_node_count" {
  type        = number
  description = "Quantidade de maquinas iniciais no grupo"
}

// Machine Image
variable "machine_image_name" {
  type        = string
  description = "Nome da imagem de maquina"
}

variable "machine_image_description" {
  type        = string
  description = "Descriacao da imagem de maquina"
}