variable "firewall_rules" {
  description = "Firewall rules to apply"
  type        = list(object({
    name        = string
    description = string
    priority    = number
    direction   = string
    action      = string
    ranges      = list(string)
    targets     = list(string)
  }))
}

variable "network" {
  description = "The name of the network to apply firewall rules"
  type        = string
}
