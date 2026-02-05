# ESI::FwLeaderboardsGetVictoryPoints

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_total** | [**Array&lt;FwLeaderboardsGetVictoryPointsActiveTotalInner&gt;**](FwLeaderboardsGetVictoryPointsActiveTotalInner.md) | Top 4 ranking of factions active in faction warfare by total victory points. A faction is considered \&quot;active\&quot; if they have participated in faction warfare in the past 14 days |  |
| **last_week** | [**Array&lt;FwLeaderboardsGetVictoryPointsLastWeekInner&gt;**](FwLeaderboardsGetVictoryPointsLastWeekInner.md) | Top 4 ranking of factions by victory points in the past week |  |
| **yesterday** | [**Array&lt;FwLeaderboardsGetVictoryPointsYesterdayInner&gt;**](FwLeaderboardsGetVictoryPointsYesterdayInner.md) | Top 4 ranking of factions by victory points in the past day |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::FwLeaderboardsGetVictoryPoints.new(
  active_total: null,
  last_week: null,
  yesterday: null
)
```

