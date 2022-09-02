variable "vcsa_hostname" {
}

variable "esxi_hostname" {
}

variable "vcsa_username" {
}

variable "vcsa_password" {
}

variable "pod" {
}

variable "switch_data" {
  type = map(object({
    name = string
    index = number
    serial_port = string
    eth1 = string
    eth2 = string
    eth3 = string
    eth4 = string
  }))
}

variable "server_data" {
  type = map(object({
    name = string
    index = number
    ens224 = string
  }))
}

variable "portgroup_data" {
  type = map(string)
}
