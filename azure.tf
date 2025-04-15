# Required Outputs/Data blocks (these are pulled from the current config after running "az login")
data "azurerm_client_config" "current" {
  # Retrieves the current Azure tenant and client settings
}

data "azuread_client_config" "current" {
    # Retreives the current AzureAD config
}

data "azurerm_subscription" "current" {
    # Retreives the subscription config
}

output "subscription_id" {
  value = data.azurerm_client_config.current.subscription_id
}

output "tenant_id" {
  value = data.azurerm_client_config.current.tenant_id
}

resource  "azuread_application"  "app" {
display_name  =  var.napp_registration_display_name
owners           = [data.azuread_client_config.current.object_id]

  required_resource_access {
    resource_app_id = "00000003-0000-0000-c000-000000000000" # Microsoft Graph API Resource ID

    resource_access {
      id   = "b07a5c10-f008-4363-abc5-b31250a35744" # Application.ReadWrite.OwnedBy
      type = "Scope"
    }

    resource_access {
      id   = "dfddf73b-12ee-4f7b-b7c5-9e5c57362d39" # Directory.Read.All
      type = "Scope"
    }

    resource_access {
      id   = "a154be20-db9c-4e7b-960d-9e7fe03ec29e" # Group.Read.All
      type = "Scope"
    }

    resource_access {
      id   = "19dbc75e-c2e2-444c-a770-ec69d8559fc7" # User.Read
      type = "Scope"
    }
  }
  web {
    redirect_uris = ["https://newrelic.com/"]
  }
}

resource  "azuread_service_principal"  "app" {
client_id = azuread_application.app.client_id
}

resource  "azuread_application_password"  "app" {
application_id  =  azuread_application.app.id
}

resource "azurerm_role_assignment" "reader_role" {
  principal_id              = azuread_service_principal.app.object_id
  role_definition_name      = "Reader"
  scope                     = data.azurerm_subscription.current.id
}

# Output the Service Principal and password
output  "app" {
value  =  azuread_application.app.client_id
sensitive  =  false
}

output  "app_password" {
value  =  azuread_application_password.app.value
sensitive  =  true
}
