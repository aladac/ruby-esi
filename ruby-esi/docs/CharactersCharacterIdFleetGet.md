# ESI::CharactersCharacterIdFleetGet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_boss_id** | **Integer** | Character ID of the current fleet boss |  |
| **fleet_id** | **Integer** | The character&#39;s current fleet ID |  |
| **role** | **String** | Member’s role in fleet |  |
| **squad_id** | **Integer** | ID of the squad the member is in. If not applicable, will be set to -1 |  |
| **wing_id** | **Integer** | ID of the wing the member is in. If not applicable, will be set to -1 |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CharactersCharacterIdFleetGet.new(
  fleet_boss_id: null,
  fleet_id: null,
  role: null,
  squad_id: null,
  wing_id: null
)
```

