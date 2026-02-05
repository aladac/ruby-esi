# ESI::CorporationCorporationIdMiningExtractionsGetInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chunk_arrival_time** | **Time** | The time at which the chunk being extracted will arrive and can be fractured by the moon mining drill.  |  |
| **extraction_start_time** | **Time** | The time at which the current extraction was initiated.  |  |
| **moon_id** | **Integer** |  |  |
| **natural_decay_time** | **Time** | The time at which the chunk being extracted will naturally fracture if it is not first fractured by the moon mining drill.  |  |
| **structure_id** | **Integer** |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CorporationCorporationIdMiningExtractionsGetInner.new(
  chunk_arrival_time: null,
  extraction_start_time: null,
  moon_id: null,
  natural_decay_time: null,
  structure_id: null
)
```

