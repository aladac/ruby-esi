# ESI::MarketsRegionIdOrdersGetInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **duration** | **Integer** |  |  |
| **is_buy_order** | **Boolean** |  |  |
| **issued** | **Time** |  |  |
| **location_id** | **Integer** |  |  |
| **min_volume** | **Integer** |  |  |
| **order_id** | **Integer** |  |  |
| **price** | **Float** |  |  |
| **range** | **String** |  |  |
| **system_id** | **Integer** | The solar system this order was placed |  |
| **type_id** | **Integer** |  |  |
| **volume_remain** | **Integer** |  |  |
| **volume_total** | **Integer** |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::MarketsRegionIdOrdersGetInner.new(
  duration: null,
  is_buy_order: null,
  issued: null,
  location_id: null,
  min_volume: null,
  order_id: null,
  price: null,
  range: null,
  system_id: null,
  type_id: null,
  volume_remain: null,
  volume_total: null
)
```

