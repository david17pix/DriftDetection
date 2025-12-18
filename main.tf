resource "azurerm_resource_group" "rg" {
  name     = "yor-test-rg"
  location = "eastus"
  tags = {

    git_commit           = "1739710a5af7ff19ca14cc926572fc2986365d4c"
    git_file             = "main.tf"
    git_last_modified_at = "2025-12-18 23:09:46"
    git_last_modified_by = "davidalejo17@hotmail.com"
    git_modifiers        = "113141616+blahsi/davidalejo17"
    git_org              = "az1709"
    git_repo             = "DriftDetection"
    yor_name             = "rg"
    yor_trace            = "cc072489-4b4b-4113-a455-57bac0b35e7a"
  }
}

resource "azurerm_storage_account" "sa" {
  name                     = "yortestsa${random_integer.suffix.result}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = {

    yor_name  = "sa"
    yor_trace = "2d5e3010-9c7e-4eff-8fbf-c7889e67c0db"
  }
}

resource "azurerm_storage_container" "container" {
  name                  = "yor-test-container"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}

resource "random_integer" "suffix" {
  min = 10000
  max = 99999
}
