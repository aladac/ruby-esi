# ESI::CharactersCharacterIdFwStatsGet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_rank** | **Integer** | The given character&#39;s current faction rank | [optional] |
| **enlisted_on** | **Time** | The enlistment date of the given character into faction warfare. Will not be included if character is not enlisted in faction warfare | [optional] |
| **faction_id** | **Integer** | The faction the given character is enlisted to fight for. Will not be included if character is not enlisted in faction warfare | [optional] |
| **highest_rank** | **Integer** | The given character&#39;s highest faction rank achieved | [optional] |
| **kills** | [**CharactersCharacterIdFwStatsGetKills**](CharactersCharacterIdFwStatsGetKills.md) |  |  |
| **victory_points** | [**CharactersCharacterIdFwStatsGetVictoryPoints**](CharactersCharacterIdFwStatsGetVictoryPoints.md) |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CharactersCharacterIdFwStatsGet.new(
  current_rank: null,
  enlisted_on: null,
  faction_id: null,
  highest_rank: null,
  kills: null,
  victory_points: null
)
```

