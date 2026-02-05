# ESI::CharactersAffiliationPostInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alliance_id** | **Integer** | The character&#39;s alliance ID, if their corporation is in an alliance | [optional] |
| **character_id** | **Integer** | The character&#39;s ID |  |
| **corporation_id** | **Integer** | The character&#39;s corporation ID |  |
| **faction_id** | **Integer** | The character&#39;s faction ID, if their corporation is in a faction | [optional] |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CharactersAffiliationPostInner.new(
  alliance_id: null,
  character_id: null,
  corporation_id: null,
  faction_id: null
)
```

