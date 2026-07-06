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
    billing_type        = optional(string) # Default: "MeteredData"
    tags                = optional(map(string))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    link1 = optional(object({
      admin_enabled                 = optional(bool) # Default: false
      macsec_cak_keyvault_secret_id = optional(string)
      macsec_cipher                 = optional(string) # Default: "GcmAes128"
      macsec_ckn_keyvault_secret_id = optional(string)
      macsec_sci_enabled            = optional(bool) # Default: false
    }))
    link2 = optional(object({
      admin_enabled                 = optional(bool) # Default: false
      macsec_cak_keyvault_secret_id = optional(string)
      macsec_cipher                 = optional(string) # Default: "GcmAes128"
      macsec_ckn_keyvault_secret_id = optional(string)
      macsec_sci_enabled            = optional(bool) # Default: false
    }))
  }))
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
  # --- Unconfirmed validation candidates, derived from azurerm_express_route_port's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validate.ExpressRoutePortName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: encapsulation
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: billing_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

