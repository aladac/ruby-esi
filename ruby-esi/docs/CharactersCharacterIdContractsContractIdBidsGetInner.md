# ESI::CharactersCharacterIdContractsContractIdBidsGetInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | The amount bid, in ISK |  |
| **bid_id** | **Integer** | Unique ID for the bid |  |
| **bidder_id** | **Integer** | Character ID of the bidder |  |
| **date_bid** | **Time** | Datetime when the bid was placed |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CharactersCharacterIdContractsContractIdBidsGetInner.new(
  amount: null,
  bid_id: null,
  bidder_id: null,
  date_bid: null
)
```

