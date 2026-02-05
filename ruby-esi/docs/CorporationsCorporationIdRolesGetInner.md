# ESI::CorporationsCorporationIdRolesGetInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** |  |  |
| **grantable_roles** | **Array&lt;String&gt;** |  | [optional] |
| **grantable_roles_at_base** | **Array&lt;String&gt;** |  | [optional] |
| **grantable_roles_at_hq** | **Array&lt;String&gt;** |  | [optional] |
| **grantable_roles_at_other** | **Array&lt;String&gt;** |  | [optional] |
| **roles** | **Array&lt;String&gt;** |  | [optional] |
| **roles_at_base** | **Array&lt;String&gt;** |  | [optional] |
| **roles_at_hq** | **Array&lt;String&gt;** |  | [optional] |
| **roles_at_other** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CorporationsCorporationIdRolesGetInner.new(
  character_id: null,
  grantable_roles: null,
  grantable_roles_at_base: null,
  grantable_roles_at_hq: null,
  grantable_roles_at_other: null,
  roles: null,
  roles_at_base: null,
  roles_at_hq: null,
  roles_at_other: null
)
```

