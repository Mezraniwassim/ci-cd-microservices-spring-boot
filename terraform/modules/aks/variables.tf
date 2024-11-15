variable "resource_group_name" {
  description = "The name of the resource group"
}

variable "location" {
  description = "The location of the AKS cluster"
}

variable "subnet_id" {
  description = "The ID of the subnet where AKS will be deployed"
}

variable "node_count" {
  description = "Number of nodes in the AKS cluster"
}
