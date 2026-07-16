output "express_route_ports_id" {
  description = "Map of id values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.id if v.id != null && length(v.id) > 0 }
}
output "express_route_ports_bandwidth_in_gbps" {
  description = "Map of bandwidth_in_gbps values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.bandwidth_in_gbps if v.bandwidth_in_gbps != null }
}
output "express_route_ports_billing_type" {
  description = "Map of billing_type values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.billing_type if v.billing_type != null && length(v.billing_type) > 0 }
}
output "express_route_ports_encapsulation" {
  description = "Map of encapsulation values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.encapsulation if v.encapsulation != null && length(v.encapsulation) > 0 }
}
output "express_route_ports_ethertype" {
  description = "Map of ethertype values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.ethertype if v.ethertype != null && length(v.ethertype) > 0 }
}
output "express_route_ports_guid" {
  description = "Map of guid values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.guid if v.guid != null && length(v.guid) > 0 }
}
output "express_route_ports_identity" {
  description = "Map of identity values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "express_route_ports_link1" {
  description = "Map of link1 values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.link1 if v.link1 != null && length(v.link1) > 0 }
}
output "express_route_ports_link2" {
  description = "Map of link2 values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.link2 if v.link2 != null && length(v.link2) > 0 }
}
output "express_route_ports_location" {
  description = "Map of location values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.location if v.location != null && length(v.location) > 0 }
}
output "express_route_ports_mtu" {
  description = "Map of mtu values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.mtu if v.mtu != null && length(v.mtu) > 0 }
}
output "express_route_ports_name" {
  description = "Map of name values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.name if v.name != null && length(v.name) > 0 }
}
output "express_route_ports_peering_location" {
  description = "Map of peering_location values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.peering_location if v.peering_location != null && length(v.peering_location) > 0 }
}
output "express_route_ports_resource_group_name" {
  description = "Map of resource_group_name values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "express_route_ports_tags" {
  description = "Map of tags values across all express_route_ports, keyed the same as var.express_route_ports"
  value       = { for k, v in azurerm_express_route_port.express_route_ports : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

