variable "express_route_ports" {
  description = <<EOT
Map of express_route_ports, attributes below
Required:
    - bandwidth_in_gbps
    - encapsulation
    - location
    - name
    - peering_location
    - resource_group_name
Optional:
    - billing_type
    - tags
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - link1 (block):
        - admin_enabled (optional)
        - macsec_cak_keyvault_secret_id (optional)
        - macsec_cipher (optional)
        - macsec_ckn_keyvault_secret_id (optional)
        - macsec_sci_enabled (optional)
    - link2 (block):
        - admin_enabled (optional)
        - macsec_cak_keyvault_secret_id (optional)
        - macsec_cipher (optional)
        - macsec_ckn_keyvault_secret_id (optional)
        - macsec_sci_enabled (optional)
EOT

  type = map(object({
    bandwidth_in_gbps   = number
    encapsulation       = string
    location            = string
    name                = string
    peering_location    = string
    resource_group_name = string
    billing_type        = optional(string)
    tags                = optional(map(string))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    link1 = optional(object({
      admin_enabled                 = optional(bool)
      macsec_cak_keyvault_secret_id = optional(string)
      macsec_cipher                 = optional(string)
      macsec_ckn_keyvault_secret_id = optional(string)
      macsec_sci_enabled            = optional(bool)
    }))
    link2 = optional(object({
      admin_enabled                 = optional(bool)
      macsec_cak_keyvault_secret_id = optional(string)
      macsec_cipher                 = optional(string)
      macsec_ckn_keyvault_secret_id = optional(string)
      macsec_sci_enabled            = optional(bool)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.express_route_ports : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.express_route_ports : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.express_route_ports : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.express_route_ports : (
        length(v.peering_location) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.express_route_ports : (
        v.bandwidth_in_gbps >= 1
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.express_route_ports : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 11 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

