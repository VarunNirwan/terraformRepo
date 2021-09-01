resource "azurerm_resource_group" "logicapp_rg" {
  name     = "workflow-resources"
  location = "West Europe"
}

resource "azurerm_template_deployment" "terraform-arm" {
  name                = "terraform-arm-01"
  resource_group_name = azurerm_resource_group.logicapp_rg.name

  template_body = file("apmm.json")

  parameters = {
    #"workflows_logicapp321_name " = "logicapp321" 
    #"connections_azureblob_1_externalid" = "/subscriptions/28b43add-147d-4e0a-ab1e-43528d4d9205/resourceGroups/testlogicapp/providers/Microsoft.Web/connections/azureblob-1"
    "workflows_tb_sb_logicapp_test_name" = "tb-pg-logicapp"
  }

  deployment_mode = "Incremental"
}

