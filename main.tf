#Links the Azure subscription to the New Relic account - change "foo" to the desired terraform name
resource "newrelic_cloud_azure_link_account" "foo"{
  account_id = var.newrelic_account_id
  application_id = "ID of the application"  #the ID of the AzureAD app see here for creation via terraform: https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_registration
  client_secret = var.azure_client_secret
  subscription_id = var.azure_subscription_id 
  tenant_id = var.azure_tenant_id 
  name  = "Name of the linked account"
}

#Only the Azure monitor integration is included below and needs to be configured in most cases.  If a specific integration is required examples with the default configuration are included in integrations.tf 
#The values for resource groups etc could be included in variables.tf
resource "newrelic_cloud_azure_integrations" "foo" {
  linked_account_id = newrelic_cloud_azure_link_account.foo.id
  account_id = var.newrelic_account_id

   monitor {
    metrics_polling_interval = 60
    resource_groups          = ["resource_groups"]
    include_tags             = ["env:production"]
    exclude_tags             = ["env:staging", "env:testing"]
    enabled                  = true
    resource_types           = ["microsoft.datashare/accounts"]
  }

}