# ESI::KillmailsKillmailIdKillmailHashGetVictimItemsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flag** | **Integer** | Flag for the location of the item  |  |
| **item_type_id** | **Integer** |  |  |
| **items** | [**Array&lt;KillmailsKillmailIdKillmailHashGetVictimItemsInnerItemsInner&gt;**](KillmailsKillmailIdKillmailHashGetVictimItemsInnerItemsInner.md) |  | [optional] |
| **quantity_destroyed** | **Integer** | How many of the item were destroyed if any  | [optional] |
| **quantity_dropped** | **Integer** | How many of the item were dropped if any  | [optional] |
| **singleton** | **Integer** |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::KillmailsKillmailIdKillmailHashGetVictimItemsInner.new(
  flag: null,
  item_type_id: null,
  items: null,
  quantity_destroyed: null,
  quantity_dropped: null,
  singleton: null
)
```

