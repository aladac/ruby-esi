# ESI::UniverseSystemsSystemIdGet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **constellation_id** | **Integer** | The constellation this solar system is in |  |
| **name** | **String** |  |  |
| **planets** | [**Array&lt;UniverseSystemsSystemIdGetPlanetsInner&gt;**](UniverseSystemsSystemIdGetPlanetsInner.md) |  | [optional] |
| **position** | [**CharactersCharacterIdAssetsLocationsPostInnerPosition**](CharactersCharacterIdAssetsLocationsPostInnerPosition.md) |  |  |
| **security_class** | **String** |  | [optional] |
| **security_status** | **Float** |  |  |
| **star_id** | **Integer** |  | [optional] |
| **stargates** | **Array&lt;Integer&gt;** |  | [optional] |
| **stations** | **Array&lt;Integer&gt;** |  | [optional] |
| **system_id** | **Integer** |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::UniverseSystemsSystemIdGet.new(
  constellation_id: null,
  name: null,
  planets: null,
  position: null,
  security_class: null,
  security_status: null,
  star_id: null,
  stargates: null,
  stations: null,
  system_id: null
)
```

