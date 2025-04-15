
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

variable "napp_registration_display_name" {
  description = "The display name for the app registration in Azure"
}