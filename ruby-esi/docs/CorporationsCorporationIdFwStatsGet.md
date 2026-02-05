# ESI::CorporationsCorporationIdFwStatsGet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enlisted_on** | **Time** | The enlistment date of the given corporation into faction warfare. Will not be included if corporation is not enlisted in faction warfare | [optional] |
| **faction_id** | **Integer** | The faction the given corporation is enlisted to fight for. Will not be included if corporation is not enlisted in faction warfare | [optional] |
| **kills** | [**CorporationsCorporationIdFwStatsGetKills**](CorporationsCorporationIdFwStatsGetKills.md) |  |  |
| **pilots** | **Integer** | How many pilots the enlisted corporation has. Will not be included if corporation is not enlisted in faction warfare | [optional] |
| **victory_points** | [**CorporationsCorporationIdFwStatsGetVictoryPoints**](CorporationsCorporationIdFwStatsGetVictoryPoints.md) |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CorporationsCorporationIdFwStatsGet.new(
  enlisted_on: null,
  faction_id: null,
  kills: null,
  pilots: null,
  victory_points: null
)
```

