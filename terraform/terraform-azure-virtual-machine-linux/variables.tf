variable "virtual_machine_name" {
  type        = string
  default     = "glt-24-rmm2908"
  description = "Name of the virtual machine"
}

variable "virtual_machine_admin_username" {
  type        = string
  default     = "adminuser"
  description = "Admin user name"
}

variable "virtual_machine_admin_password" {
  type        = string
  default     = "GLT24Worksh@p!"
  description = "Password of the admin user"
}

variable "virtual_machine_ssh_key_path" {
  type        = string
  default     = "id_rsa.pub"
  description = "Path to the public key"
}
