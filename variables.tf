###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}
variable "counts" {
  type        = number
  default     = "2"
  description = "2 web vms"
}
/*variable "ssh_key" {
  type        = string
  default     = "<your_ssh_ed25519_key>"
  description = "ssh-keygen -t ed25519"
}*/
variable "vms_name" {
  type        = string
  default     = "web"
  description = "name for vm's"
}
variable "vm_fam" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "boot disk for vm"
}
variable "vms_resources" {
        type            = object({
        platform_id     = string
        cores           = number
        memory          = number
        core_fraction   = number
        preemptible     = bool
        nat             = bool
    })
    default = {
        platform_id   =  "standard-v1"
        cores         =  2
        memory        =  1
        core_fraction =  5
        preemptible   =  true
        nat           =  true
    }
    description = "VMs resources"
}
variable "each_vm" {
  type = list(object({  vm_name=string, cpu=number, ram=number, disk_volume=number }))
  default = [ {
    vm_name = "main"
    cpu = 2
    ram = 1
    disk_volume = 5
  },
  {
    vm_name = "replica"
    cpu = 2
    ram = 2
    disk_volume = 10
  }]
}
variable "disks_resources" {
    type    = object({
        disk_type = string
        disk_size = number
    })
    default = {
        disk_type="network-hdd"
        disk_size=1
    }
    description = "virtual disk"
}
variable "vms_name_storage" {
  type = string
  default = "storage"
  description = "VM name"
}
variable "ycdiskcount" {
  type = number
  default = "3"
  description = "VM name"
}