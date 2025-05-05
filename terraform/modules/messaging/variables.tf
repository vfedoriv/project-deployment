variable "topic_name" {
  description = "The name of the Pub/Sub topic."
  type        = string
  default     = "default-topic"
}

variable "subscription_name" {
  description = "The name of the Pub/Sub subscription."
  type        = string
  default     = "default-subscription"
}