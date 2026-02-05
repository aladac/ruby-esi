# ESI::FwLeaderboardsCharactersGetKills

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_total** | [**Array&lt;FwLeaderboardsCharactersGetKillsActiveTotalInner&gt;**](FwLeaderboardsCharactersGetKillsActiveTotalInner.md) | Top 100 ranking of pilots active in faction warfare by total kills. A pilot is considered \&quot;active\&quot; if they have participated in faction warfare in the past 14 days |  |
| **last_week** | [**Array&lt;FwLeaderboardsCharactersGetKillsLastWeekInner&gt;**](FwLeaderboardsCharactersGetKillsLastWeekInner.md) | Top 100 ranking of pilots by kills in the past week |  |
| **yesterday** | [**Array&lt;FwLeaderboardsCharactersGetKillsYesterdayInner&gt;**](FwLeaderboardsCharactersGetKillsYesterdayInner.md) | Top 100 ranking of pilots by kills in the past day |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::FwLeaderboardsCharactersGetKills.new(
  active_total: null,
  last_week: null,
  yesterday: null
)
```

