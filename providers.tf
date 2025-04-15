# Configure terraform
terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "~> 3.60"
    }
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.44"
    }
    azuread = {
      source  = "hashicorp/azuread"
    }
  }
}
# AzureRM Configuration
provider "azurerm" {
  features {}
}

provider "azuread" {
  # Ensure you have authenticated to your Azure AD tenant
  # tenant_id = data.azurerm_client_config.current.tenant_id
}

# Configure the New Relic provider
provider "newrelic" {
  account_id     = var.newrelic_account_id
  api_key        = var.newrelic_api_key
  region         = var.newrelic_region
}

