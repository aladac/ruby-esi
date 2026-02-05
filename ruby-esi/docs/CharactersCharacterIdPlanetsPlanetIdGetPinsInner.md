# ESI::CharactersCharacterIdPlanetsPlanetIdGetPinsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contents** | [**Array&lt;CharactersCharacterIdPlanetsPlanetIdGetPinsInnerContentsInner&gt;**](CharactersCharacterIdPlanetsPlanetIdGetPinsInnerContentsInner.md) |  | [optional] |
| **expiry_time** | **Time** |  | [optional] |
| **extractor_details** | [**CharactersCharacterIdPlanetsPlanetIdGetPinsInnerExtractorDetails**](CharactersCharacterIdPlanetsPlanetIdGetPinsInnerExtractorDetails.md) |  | [optional] |
| **factory_details** | [**CharactersCharacterIdPlanetsPlanetIdGetPinsInnerFactoryDetails**](CharactersCharacterIdPlanetsPlanetIdGetPinsInnerFactoryDetails.md) |  | [optional] |
| **install_time** | **Time** |  | [optional] |
| **last_cycle_start** | **Time** |  | [optional] |
| **latitude** | **Float** |  |  |
| **longitude** | **Float** |  |  |
| **pin_id** | **Integer** |  |  |
| **schematic_id** | **Integer** |  | [optional] |
| **type_id** | **Integer** |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CharactersCharacterIdPlanetsPlanetIdGetPinsInner.new(
  contents: null,
  expiry_time: null,
  extractor_details: null,
  factory_details: null,
  install_time: null,
  last_cycle_start: null,
  latitude: null,
  longitude: null,
  pin_id: null,
  schematic_id: null,
  type_id: null
)
```

