# ESI::FwLeaderboardsCharactersGetVictoryPoints

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_total** | [**Array&lt;FwLeaderboardsCharactersGetVictoryPointsActiveTotalInner&gt;**](FwLeaderboardsCharactersGetVictoryPointsActiveTotalInner.md) | Top 100 ranking of pilots active in faction warfare by total victory points. A pilot is considered \&quot;active\&quot; if they have participated in faction warfare in the past 14 days |  |
| **last_week** | [**Array&lt;FwLeaderboardsCharactersGetVictoryPointsLastWeekInner&gt;**](FwLeaderboardsCharactersGetVictoryPointsLastWeekInner.md) | Top 100 ranking of pilots by victory points in the past week |  |
| **yesterday** | [**Array&lt;FwLeaderboardsCharactersGetVictoryPointsYesterdayInner&gt;**](FwLeaderboardsCharactersGetVictoryPointsYesterdayInner.md) | Top 100 ranking of pilots by victory points in the past day |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::FwLeaderboardsCharactersGetVictoryPoints.new(
  active_total: null,
  last_week: null,
  yesterday: null
)
```

