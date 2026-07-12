output "express_route_ports_id" {
  description = "Map of id values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.id }
}
output "express_route_ports_bandwidth_in_gbps" {
  description = "Map of bandwidth_in_gbps values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.bandwidth_in_gbps }
}
output "express_route_ports_billing_type" {
  description = "Map of billing_type values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.billing_type }
}
output "express_route_ports_encapsulation" {
  description = "Map of encapsulation values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.encapsulation }
}
output "express_route_ports_ethertype" {
  description = "Map of ethertype values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.ethertype }
}
output "express_route_ports_guid" {
  description = "Map of guid values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.guid }
}
output "express_route_ports_identity" {
  description = "Map of identity values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.identity }
}
output "express_route_ports_link1" {
  description = "Map of link1 values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.link1 }
}
output "express_route_ports_link2" {
  description = "Map of link2 values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.link2 }
}
output "express_route_ports_location" {
  description = "Map of location values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.location }
}
output "express_route_ports_mtu" {
  description = "Map of mtu values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.mtu }
}
output "express_route_ports_name" {
  description = "Map of name values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.name }
}
output "express_route_ports_peering_location" {
  description = "Map of peering_location values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.peering_location }
}
output "express_route_ports_resource_group_name" {
  description = "Map of resource_group_name values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.resource_group_name }
}
output "express_route_ports_tags" {
  description = "Map of tags values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.tags }
}

