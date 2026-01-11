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
    billing_type        = optional(string, "MeteredData")
    tags                = optional(map(string))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    link1 = optional(object({
      admin_enabled                 = optional(bool, false)
      macsec_cak_keyvault_secret_id = optional(string)
      macsec_cipher                 = optional(string, "GcmAes128")
      macsec_ckn_keyvault_secret_id = optional(string)
      macsec_sci_enabled            = optional(bool, false)
    }))
    link2 = optional(object({
      admin_enabled                 = optional(bool, false)
      macsec_cak_keyvault_secret_id = optional(string)
      macsec_cipher                 = optional(string, "GcmAes128")
      macsec_ckn_keyvault_secret_id = optional(string)
      macsec_sci_enabled            = optional(bool, false)
    }))
  }))
}

