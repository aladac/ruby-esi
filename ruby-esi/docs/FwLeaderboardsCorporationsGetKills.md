# ESI::FwLeaderboardsCorporationsGetKills

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_total** | [**Array&lt;FwLeaderboardsCorporationsGetKillsActiveTotalInner&gt;**](FwLeaderboardsCorporationsGetKillsActiveTotalInner.md) | Top 10 ranking of corporations active in faction warfare by total kills. A corporation is considered \&quot;active\&quot; if they have participated in faction warfare in the past 14 days |  |
| **last_week** | [**Array&lt;FwLeaderboardsCorporationsGetKillsLastWeekInner&gt;**](FwLeaderboardsCorporationsGetKillsLastWeekInner.md) | Top 10 ranking of corporations by kills in the past week |  |
| **yesterday** | [**Array&lt;FwLeaderboardsCorporationsGetKillsYesterdayInner&gt;**](FwLeaderboardsCorporationsGetKillsYesterdayInner.md) | Top 10 ranking of corporations by kills in the past day |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::FwLeaderboardsCorporationsGetKills.new(
  active_total: null,
  last_week: null,
  yesterday: null
)
```

