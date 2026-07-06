output "express_route_ports" {
  description = "All express_route_port resources"
  value       = azurerm_express_route_port.express_route_ports
}
output "express_route_ports_bandwidth_in_gbps" {
  description = "List of bandwidth_in_gbps values across all express_route_ports"
  value       = [for k, v in azurerm_express_route_port.express_route_ports : v.bandwidth_in_gbps]
}
output "express_route_ports_billing_type" {
  description = "List of billing_type values across all express_route_ports"
  value       = [for k, v in azurerm_express_route_port.express_route_ports : v.billing_type]
}
output "express_route_ports_encapsulation" {
  description = "List of encapsulation values across all express_route_ports"
  value       = [for k, v in azurerm_express_route_port.express_route_ports : v.encapsulation]
}
output "express_route_ports_ethertype" {
  description = "List of ethertype values across all express_route_ports"
  value       = [for k, v in azurerm_express_route_port.express_route_ports : v.ethertype]
}
output "express_route_ports_guid" {
  description = "List of guid values across all express_route_ports"
  value       = [for k, v in azurerm_express_route_port.express_route_ports : v.guid]
}
output "express_route_ports_identity" {
  description = "List of identity values across all express_route_ports"
  value       = [for k, v in azurerm_express_route_port.express_route_ports : v.identity]
}
output "express_route_ports_link1" {
  description = "List of link1 values across all express_route_ports"
  value       = [for k, v in azurerm_express_route_port.express_route_ports : v.link1]
}
output "express_route_ports_link2" {
  description = "List of link2 values across all express_route_ports"
  value       = [for k, v in azurerm_express_route_port.express_route_ports : v.link2]
}
output "express_route_ports_location" {
  description = "List of location values across all express_route_ports"
  value       = [for k, v in azurerm_express_route_port.express_route_ports : v.location]
}
output "express_route_ports_mtu" {
  description = "List of mtu values across all express_route_ports"
  value       = [for k, v in azurerm_express_route_port.express_route_ports : v.mtu]
}
output "express_route_ports_name" {
  description = "List of name values across all express_route_ports"
  value       = [for k, v in azurerm_express_route_port.express_route_ports : v.name]
}
output "express_route_ports_peering_location" {
  description = "List of peering_location values across all express_route_ports"
  value       = [for k, v in azurerm_express_route_port.express_route_ports : v.peering_location]
}
output "express_route_ports_resource_group_name" {
  description = "List of resource_group_name values across all express_route_ports"
  value       = [for k, v in azurerm_express_route_port.express_route_ports : v.resource_group_name]
}
output "express_route_ports_tags" {
  description = "List of tags values across all express_route_ports"
  value       = [for k, v in azurerm_express_route_port.express_route_ports : v.tags]
}

