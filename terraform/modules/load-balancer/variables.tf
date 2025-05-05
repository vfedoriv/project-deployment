variable "static_ip_name" {
  description = "The name of the static IP address."
  type        = string
  default     = "static-ip"
}

variable "backend_service_name" {
  description = "The name of the backend service."
  type        = string
  default     = "backend-service"
}

variable "instance_group" {
  description = "The instance group to attach to the backend service."
  type        = string
}

variable "url_map_name" {
  description = "The name of the URL map."
  type        = string
  default     = "url-map"
}

variable "http_proxy_name" {
  description = "The name of the HTTP proxy."
  type        = string
  default     = "http-proxy"
}

variable "forwarding_rule_name" {
  description = "The name of the forwarding rule."
  type        = string
  default     = "http-forwarding-rule"
}

variable "health_check_name" {
  description = "The name of the health check."
  type        = string
  default     = "default-health-check"
}