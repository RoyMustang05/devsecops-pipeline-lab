variable "bucket_name" {
  description = "Nombre unico global del bucket S3"
  type        = string
}

variable "index_file_path" {
  description = "Ruta local al archivo index.html a publicar"
  type        = string
}

variable "environment" {
  description = "Nombre del ambiente (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "tags" {
  description = "Etiquetas adicionales para todos los recursos del modulo"
  type        = map(string)
  default     = {}
}
