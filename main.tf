/*resource "azuread_application_registration" "example" {
  # (resource arguments)
  display_name = "NewRelic-Integrations-AdamMarshall"
}
*/
#Links the Azure subscription to the New Relic account - change "foo" to the desired terraform name
resource "newrelic_cloud_azure_link_account" "foo"{
  account_id = "3460622"
  application_id = azuread_application.app.client_id
  client_secret = azuread_application_password.app.value
  subscription_id = data.azurerm_client_config.current.subscription_id
  tenant_id = data.azurerm_client_config.current.tenant_id
  name  = "TSS Sandbox 2"
}

#Only the Azure monitor integration is included below and needs to be configured in most cases.  If a specific integration is required examples with the default configuration are included in integrations.tf 
#The values for resource groups etc could be included in variables.tf
resource "newrelic_cloud_azure_integrations" "foo" {
  linked_account_id = newrelic_cloud_azure_link_account.foo.id
  account_id = "3460622"

   monitor {
    metrics_polling_interval = 60
    resource_groups          = ["resource_groups"]
    include_tags             = ["env:production"]
    exclude_tags             = ["env:staging", "env:testing"]
    enabled                  = true
    resource_types           = ["microsoft.datashare/accounts"]
  }

}
