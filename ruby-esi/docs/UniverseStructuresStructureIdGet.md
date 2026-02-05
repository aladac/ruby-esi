# ESI::UniverseStructuresStructureIdGet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The full name of the structure |  |
| **owner_id** | **Integer** | The ID of the corporation who owns this particular structure |  |
| **position** | [**UniverseStructuresStructureIdGetPosition**](UniverseStructuresStructureIdGetPosition.md) |  | [optional] |
| **solar_system_id** | **Integer** |  |  |
| **type_id** | **Integer** |  | [optional] |

## Example

```ruby
require 'ruby-esi'

instance = ESI::UniverseStructuresStructureIdGet.new(
  name: null,
  owner_id: null,
  position: null,
  solar_system_id: null,
  type_id: null
)
```

