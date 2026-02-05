# ESI::UniverseFactionsGetInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** |  | [optional] |
| **description** | **String** |  |  |
| **faction_id** | **Integer** |  |  |
| **is_unique** | **Boolean** |  |  |
| **militia_corporation_id** | **Integer** |  | [optional] |
| **name** | **String** |  |  |
| **size_factor** | **Float** |  |  |
| **solar_system_id** | **Integer** |  | [optional] |
| **station_count** | **Integer** |  |  |
| **station_system_count** | **Integer** |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::UniverseFactionsGetInner.new(
  corporation_id: null,
  description: null,
  faction_id: null,
  is_unique: null,
  militia_corporation_id: null,
  name: null,
  size_factor: null,
  solar_system_id: null,
  station_count: null,
  station_system_count: null
)
```

