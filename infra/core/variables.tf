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

variable "vpc_description" {
  type        = string
  description = "Descricao para VPC"
}

// Firewall
variable "http_firewall_name" {
  type        = string
  description = "Nome da regra que permite trafego HTTP para instancias"
}

variable "http_firewall_description" {
  type        = string
  description = "Descricao da regra de firewall HTTP"
}

variable "https_firewall_name" {
  type        = string
  description = "Nome da regra que permite trafego HTTPS para instancias"
}

variable "https_firewall_description" {
  type        = string
  description = "Descricao da regra de firewall HTTPS"
}

variable "ssh_firewall_name" {
  type        = string
  description = "Nome da regra que permite trafego SSH para instancias"
}

variable "ssh_firewall_description" {
  type        = string
  description = "Descricao da regra de firewall SSH"
}

// Subnets
variable "subnet_name" {
  type        = string
  description = "Nome da subnet dentro da VPC"
}

variable "subnet_description" {
  type        = string
  description = "Descricao da Subnet"
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
