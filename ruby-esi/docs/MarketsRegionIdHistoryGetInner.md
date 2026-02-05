# ESI::MarketsRegionIdHistoryGetInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **average** | **Float** |  |  |
| **date** | **Date** | The date of this historical statistic entry |  |
| **highest** | **Float** |  |  |
| **lowest** | **Float** |  |  |
| **order_count** | **Integer** | Total number of orders happened that day |  |
| **volume** | **Integer** | Total |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::MarketsRegionIdHistoryGetInner.new(
  average: null,
  date: null,
  highest: null,
  lowest: null,
  order_count: null,
  volume: null
)
```

