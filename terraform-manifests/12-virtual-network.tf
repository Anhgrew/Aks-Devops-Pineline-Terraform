# Create Virtual Network
resource "azurerm_virtual_network" "anhgrew-devops" {
  name                = "anhgrew-devops-network"
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  address_space       = ["172.16.0.0/16"]
}

# Create a Subnet for AKS
resource "azurerm_subnet" "anhgrew-devops-default" {
  name                 = "anhgrew-devops-default-subnet"
  virtual_network_name = azurerm_virtual_network.anhgrew-devops.name
  resource_group_name  = azurerm_resource_group.aks_rg.name
  address_prefixes     = ["172.16.0.0/17"]
}

