# ESI::UniverseMoonsMoonIdGet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **moon_id** | **Integer** |  |  |
| **name** | **String** |  |  |
| **position** | [**CharactersCharacterIdAssetsLocationsPostInnerPosition**](CharactersCharacterIdAssetsLocationsPostInnerPosition.md) |  |  |
| **system_id** | **Integer** | The solar system this moon is in |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::UniverseMoonsMoonIdGet.new(
  moon_id: null,
  name: null,
  position: null,
  system_id: null
)
```

