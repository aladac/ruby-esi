# ESI::UniverseConstellationsConstellationIdGet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **constellation_id** | **Integer** |  |  |
| **name** | **String** |  |  |
| **position** | [**CharactersCharacterIdAssetsLocationsPostInnerPosition**](CharactersCharacterIdAssetsLocationsPostInnerPosition.md) |  |  |
| **region_id** | **Integer** | The region this constellation is in |  |
| **systems** | **Array&lt;Integer&gt;** |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::UniverseConstellationsConstellationIdGet.new(
  constellation_id: null,
  name: null,
  position: null,
  region_id: null,
  systems: null
)
```

