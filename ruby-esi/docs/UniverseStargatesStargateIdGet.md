# ESI::UniverseStargatesStargateIdGet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination** | [**UniverseStargatesStargateIdGetDestination**](UniverseStargatesStargateIdGetDestination.md) |  |  |
| **name** | **String** |  |  |
| **position** | [**CharactersCharacterIdAssetsLocationsPostInnerPosition**](CharactersCharacterIdAssetsLocationsPostInnerPosition.md) |  |  |
| **stargate_id** | **Integer** |  |  |
| **system_id** | **Integer** | The solar system this stargate is in |  |
| **type_id** | **Integer** |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::UniverseStargatesStargateIdGet.new(
  destination: null,
  name: null,
  position: null,
  stargate_id: null,
  system_id: null,
  type_id: null
)
```

