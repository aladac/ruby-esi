# ESI::UniversePlanetsPlanetIdGet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **planet_id** | **Integer** |  |  |
| **position** | [**CharactersCharacterIdAssetsLocationsPostInnerPosition**](CharactersCharacterIdAssetsLocationsPostInnerPosition.md) |  |  |
| **system_id** | **Integer** | The solar system this planet is in |  |
| **type_id** | **Integer** |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::UniversePlanetsPlanetIdGet.new(
  name: null,
  planet_id: null,
  position: null,
  system_id: null,
  type_id: null
)
```

