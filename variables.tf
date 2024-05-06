variable "resource_group_location" {
  default     = "southeastasia"
  description = "Location of the resource group."
}

variable "prefix" {
  type        = string
  default     = "win-vm-cmsv9"
  description = "Prefix of the resource name"
}