# ESI::UniverseStationsStationIdGet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max_dockable_ship_volume** | **Float** |  |  |
| **name** | **String** |  |  |
| **office_rental_cost** | **Float** |  |  |
| **owner** | **Integer** | ID of the corporation that controls this station | [optional] |
| **position** | [**CharactersCharacterIdAssetsLocationsPostInnerPosition**](CharactersCharacterIdAssetsLocationsPostInnerPosition.md) |  |  |
| **race_id** | **Integer** |  | [optional] |
| **reprocessing_efficiency** | **Float** |  |  |
| **reprocessing_stations_take** | **Float** |  |  |
| **services** | **Array&lt;String&gt;** |  |  |
| **station_id** | **Integer** |  |  |
| **system_id** | **Integer** | The solar system this station is in |  |
| **type_id** | **Integer** |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::UniverseStationsStationIdGet.new(
  max_dockable_ship_volume: null,
  name: null,
  office_rental_cost: null,
  owner: null,
  position: null,
  race_id: null,
  reprocessing_efficiency: null,
  reprocessing_stations_take: null,
  services: null,
  station_id: null,
  system_id: null,
  type_id: null
)
```

