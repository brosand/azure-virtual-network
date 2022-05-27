resource "azurerm_monitor_action_group" "main" {
  name                = "${local.resource_group_name}-alarms"
  short_name          = "Massdriver"
  resource_group_name = azurerm_resource_group.main.name

  webhook_receiver {
    name                    = "Massdriver Observability Webhook API"
    service_uri             = var.md_metadata.observability.alarm_webhook_url
    use_common_alert_schema = true
  }
}
