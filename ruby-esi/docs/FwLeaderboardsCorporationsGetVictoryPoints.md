# ESI::FwLeaderboardsCorporationsGetVictoryPoints

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_total** | [**Array&lt;FwLeaderboardsCorporationsGetVictoryPointsActiveTotalInner&gt;**](FwLeaderboardsCorporationsGetVictoryPointsActiveTotalInner.md) | Top 10 ranking of corporations active in faction warfare by total victory points. A corporation is considered \&quot;active\&quot; if they have participated in faction warfare in the past 14 days |  |
| **last_week** | [**Array&lt;FwLeaderboardsCorporationsGetVictoryPointsLastWeekInner&gt;**](FwLeaderboardsCorporationsGetVictoryPointsLastWeekInner.md) | Top 10 ranking of corporations by victory points in the past week |  |
| **yesterday** | [**Array&lt;FwLeaderboardsCorporationsGetVictoryPointsYesterdayInner&gt;**](FwLeaderboardsCorporationsGetVictoryPointsYesterdayInner.md) | Top 10 ranking of corporations by victory points in the past day |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::FwLeaderboardsCorporationsGetVictoryPoints.new(
  active_total: null,
  last_week: null,
  yesterday: null
)
```

