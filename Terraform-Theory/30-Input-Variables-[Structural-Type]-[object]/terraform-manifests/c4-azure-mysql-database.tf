resource "azurerm_sql_database" "site_db" {
  name                = "vcd-sqldb-cloud-siem-${var.webapp_name}"
  resource_group_name = azurerm_resource_group.webapp_rg.name
  server_name         = "vcd-mssql-cloud-siem-${var.webapp_name}"
  location            = var.location
  edition             = "Basic"
  tags                = local.tags
  depends_on = [module.sqlserver]
}