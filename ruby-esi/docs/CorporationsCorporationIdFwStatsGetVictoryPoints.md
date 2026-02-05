# ESI::CorporationsCorporationIdFwStatsGetVictoryPoints

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_week** | **Integer** | Last week&#39;s victory points gained by members of the given corporation |  |
| **total** | **Integer** | Total victory points gained since the given corporation enlisted |  |
| **yesterday** | **Integer** | Yesterday&#39;s victory points gained by members of the given corporation |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CorporationsCorporationIdFwStatsGetVictoryPoints.new(
  last_week: null,
  total: null,
  yesterday: null
)
```

