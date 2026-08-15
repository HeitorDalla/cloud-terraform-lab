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

// VPC
variable "vpc_name" {
  type        = string
  description = "Nome da VPC para as instancias"
}

// Firewall
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

// Subnets
variable "subnet_name" {
  type        = string
  description = "Nome da sub-rede dentro da VPC"
}

variable "subnet_cidr" {
  type        = string
  description = "Intervalo de IPs da sub-rede"
}

// KMS
variable "keyring_name" {
  type        = string
  description = "Keyring da chave KMS"
}

variable "symkey_name" {
  type        = string
  description = "Nome da chave KMS"
}

variable "rotation_period" {
  type        = string
  description = "Periodo de rotacao da chave"
}

variable "destroy_scheduled_duration" {
  type        = string
  description = "Tempo para destruicao programada"
}