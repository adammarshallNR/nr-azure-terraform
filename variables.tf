// variables.tf
variable "newrelic_account_id" {
  description = "The New Relic account ID."
}

variable "newrelic_api_key" {
  description = "The API key for New Relic."
}

variable "newrelic_region" {
  description = "The region for New Relic (e.g., 'US', 'EU')."
  default     = "EU"
}

variable "azure_subscription_id" {
  description = "The Azure subscription ID."
}

variable "azure_tenant_id" {
  description = "The Azure tenant ID."
}

variable "azure_client_id" {
  description = "The Azure client ID for authentication."
}

variable "azure_client_secret" {
  description = "The Azure client secret for authentication."
}