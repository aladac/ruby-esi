# ESI::CharactersCharacterIdPlanetsPlanetIdGetRoutesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_type_id** | **Integer** |  |  |
| **destination_pin_id** | **Integer** |  |  |
| **quantity** | **Float** |  |  |
| **route_id** | **Integer** |  |  |
| **source_pin_id** | **Integer** |  |  |
| **waypoints** | **Array&lt;Integer&gt;** | list of pin ID waypoints | [optional] |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CharactersCharacterIdPlanetsPlanetIdGetRoutesInner.new(
  content_type_id: null,
  destination_pin_id: null,
  quantity: null,
  route_id: null,
  source_pin_id: null,
  waypoints: null
)
```

