# ESI::CorporationsCorporationIdRolesHistoryGetInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **changed_at** | **Time** |  |  |
| **character_id** | **Integer** | The character whose roles are changed |  |
| **issuer_id** | **Integer** | ID of the character who issued this change |  |
| **new_roles** | **Array&lt;String&gt;** |  |  |
| **old_roles** | **Array&lt;String&gt;** |  |  |
| **role_type** | **String** |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CorporationsCorporationIdRolesHistoryGetInner.new(
  changed_at: null,
  character_id: null,
  issuer_id: null,
  new_roles: null,
  old_roles: null,
  role_type: null
)
```

