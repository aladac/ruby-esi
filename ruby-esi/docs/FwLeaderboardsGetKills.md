# ESI::FwLeaderboardsGetKills

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_total** | [**Array&lt;FwLeaderboardsGetKillsActiveTotalInner&gt;**](FwLeaderboardsGetKillsActiveTotalInner.md) | Top 4 ranking of factions active in faction warfare by total kills. A faction is considered \&quot;active\&quot; if they have participated in faction warfare in the past 14 days |  |
| **last_week** | [**Array&lt;FwLeaderboardsGetKillsLastWeekInner&gt;**](FwLeaderboardsGetKillsLastWeekInner.md) | Top 4 ranking of factions by kills in the past week |  |
| **yesterday** | [**Array&lt;FwLeaderboardsGetKillsYesterdayInner&gt;**](FwLeaderboardsGetKillsYesterdayInner.md) | Top 4 ranking of factions by kills in the past day |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::FwLeaderboardsGetKills.new(
  active_total: null,
  last_week: null,
  yesterday: null
)
```

