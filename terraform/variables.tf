variable "resource_group_name" {
  description = "Name of the resource group"
  default     = "azure-aks-rg"
}

variable "location" {
  description = "Azure region for deployment"
  default     = "francecentral"
}

variable "node_count" {
  description = "Number of nodes in the AKS cluster"
  default     = 3
}
