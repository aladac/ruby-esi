# ESI::FwStatsGetInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **faction_id** | **Integer** |  |  |
| **kills** | [**FwStatsGetInnerKills**](FwStatsGetInnerKills.md) |  |  |
| **pilots** | **Integer** | How many pilots fight for the given faction |  |
| **systems_controlled** | **Integer** | The number of solar systems controlled by the given faction |  |
| **victory_points** | [**FwStatsGetInnerVictoryPoints**](FwStatsGetInnerVictoryPoints.md) |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::FwStatsGetInner.new(
  faction_id: null,
  kills: null,
  pilots: null,
  systems_controlled: null,
  victory_points: null
)
```

