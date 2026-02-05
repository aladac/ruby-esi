# ESI::FwSystemsGetInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contested** | **String** |  |  |
| **occupier_faction_id** | **Integer** |  |  |
| **owner_faction_id** | **Integer** |  |  |
| **solar_system_id** | **Integer** |  |  |
| **victory_points** | **Integer** |  |  |
| **victory_points_threshold** | **Integer** |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::FwSystemsGetInner.new(
  contested: null,
  occupier_faction_id: null,
  owner_faction_id: null,
  solar_system_id: null,
  victory_points: null,
  victory_points_threshold: null
)
```

