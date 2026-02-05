# ESI::CharactersCharacterIdFwStatsGetVictoryPoints

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_week** | **Integer** | Last week&#39;s victory points gained by the given character |  |
| **total** | **Integer** | Total victory points gained since the given character enlisted |  |
| **yesterday** | **Integer** | Yesterday&#39;s victory points gained by the given character |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CharactersCharacterIdFwStatsGetVictoryPoints.new(
  last_week: null,
  total: null,
  yesterday: null
)
```

