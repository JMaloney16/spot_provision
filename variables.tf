variable "inst_name" {
  type        = string
  description = "Name of the cloudspace/instance."
}

variable "inst_region" {
  type        = string
  description = "The region to deploy in."
  default     = "uk-lon-1"
}

variable "inst_hacontrol_plane" {
  type        = bool
  description = "Enable the high availability control plane."
  default     = false
}

variable "inst_wait_until_ready" {
  type        = bool
  description = "Wait until the cloudspace is ready."
  default     = true
}

variable "inst_pool_class" {
  type        = string
  description = "The node pool type to provision."
}

variable "inst_bid_price" {
  type        = number
  description = "The maximum bid price per node."
}

variable "inst_node_count" {
  type        = number
  description = "The number of nodes to request."
  default     = 1
}