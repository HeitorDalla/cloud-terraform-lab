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

// Variaveis VPC
variable "vpc_name" {
  type        = string
  description = "Nome da VPC para as instancias"
}

// Variaveis para Firewall
variable "firewall_name_http" {
  type        = string
  description = "Permitir trafego HTTP para a instancia"
}

variable "firewall_name_https" {
  type        = string
  description = "Permitir trafego HTTPS para a instancia"
}

variable "firewall_name_ssh" {
  type        = string
  description = "Permitir trafego SSH para a instancia"
}

// Variaveis Subnets
variable "subnet_name" {
  type        = string
  description = "Nome da sub-rede dentro da VPC"
}

variable "subnet_cidr" {
  type        = string
  description = "Intervalo de IPs da sub-rede"
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