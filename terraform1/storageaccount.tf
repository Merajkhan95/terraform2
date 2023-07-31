resource "azurerm_storage_account" "deveus2devopssablk" {
  name                     = "deveus2devopssa111"
  resource_group_name      = "deveus2devopsrg"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  depends_on = [ azurerm_resource_group.deveus2devopsrgblk ]

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "deveus2devopscontainerblk" {
  name                  = "container1"
  storage_account_name  = "deveus2devopssa111"
  container_access_type = "private"

  depends_on = [ azurerm_storage_account.deveus2devopssablk ]
}

resource "azurerm_storage_blob" "deveus2devopscontainerblk" {
  name                   = "my-awesome-content.zip"
  storage_account_name   = "deveus2devopssa111"
  storage_container_name = "container1"
  type                   = "Block"
  source                 = "provider.tf"
  
  depends_on = [ azurerm_storage_container.deveus2devopscontainerblk ]
}