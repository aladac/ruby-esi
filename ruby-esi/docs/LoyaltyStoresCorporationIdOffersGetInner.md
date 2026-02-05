# ESI::LoyaltyStoresCorporationIdOffersGetInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ak_cost** | **Integer** | Analysis kredit cost | [optional] |
| **isk_cost** | **Integer** |  |  |
| **lp_cost** | **Integer** |  |  |
| **offer_id** | **Integer** |  |  |
| **quantity** | **Integer** |  |  |
| **required_items** | [**Array&lt;LoyaltyStoresCorporationIdOffersGetInnerRequiredItemsInner&gt;**](LoyaltyStoresCorporationIdOffersGetInnerRequiredItemsInner.md) |  |  |
| **type_id** | **Integer** |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::LoyaltyStoresCorporationIdOffersGetInner.new(
  ak_cost: null,
  isk_cost: null,
  lp_cost: null,
  offer_id: null,
  quantity: null,
  required_items: null,
  type_id: null
)
```

