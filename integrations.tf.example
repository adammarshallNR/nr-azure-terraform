#Leave an integration block empty to use its default configuration, or remove it to exclude it from the integration.  See here for further details: https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/cloud_azure_integrations
resource "newrelic_cloud_azure_integrations" "foo" {
  linked_account_id = newrelic_cloud_azure_link_account.foo.id
  account_id = var.newrelic_account_id

  api_management {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }

  app_gateway {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }

  app_service {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }

  containers {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }

  cosmos_db {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }

  cost_management {
    metrics_polling_interval = 3600
    tag_keys = ["tag_keys"]
  }

  data_factory {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }

  event_hub {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }

  express_route {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }

  firewalls {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }

  front_door {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }

  functions {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }

  key_vault {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }

  load_balancer {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }

  logic_apps {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }

  machine_learning {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }

  maria_db {
    metrics_polling_interval = 3600
    resource_groups = ["resource_groups"]
  }

  mysql {
    metrics_polling_interval = 3600
    resource_groups = ["resource_groups"]
  }

  mysql_flexible {
    metrics_polling_interval = 3600
    resource_groups = ["resource_groups"]
  }

  postgresql {
    metrics_polling_interval = 3600
    resource_groups = ["resource_groups"]
  }

  postgresql_flexible {
    metrics_polling_interval = 3600
    resource_groups = ["resource_groups"]
  }

  power_bi_dedicated {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }

  redis_cache {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }

  service_bus {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }

  sql {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }

  sql_managed {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }

  storage {
    metrics_polling_interval = 1800
    resource_groups = ["resource_groups"]
  }

  virtual_machine {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }

  virtual_networks {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }

  vms {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }

  vpn_gateway {
    metrics_polling_interval = 300
    resource_groups = ["resource_groups"]
  }
}