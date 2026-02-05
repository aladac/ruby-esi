# ESI::KillmailsKillmailIdKillmailHashGetVictim

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alliance_id** | **Integer** |  | [optional] |
| **character_id** | **Integer** |  | [optional] |
| **corporation_id** | **Integer** |  | [optional] |
| **damage_taken** | **Integer** | How much total damage was taken by the victim  |  |
| **faction_id** | **Integer** |  | [optional] |
| **items** | [**Array&lt;KillmailsKillmailIdKillmailHashGetVictimItemsInner&gt;**](KillmailsKillmailIdKillmailHashGetVictimItemsInner.md) |  | [optional] |
| **position** | [**KillmailsKillmailIdKillmailHashGetVictimPosition**](KillmailsKillmailIdKillmailHashGetVictimPosition.md) |  | [optional] |
| **ship_type_id** | **Integer** | The ship that the victim was piloting and was destroyed  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::KillmailsKillmailIdKillmailHashGetVictim.new(
  alliance_id: null,
  character_id: null,
  corporation_id: null,
  damage_taken: null,
  faction_id: null,
  items: null,
  position: null,
  ship_type_id: null
)
```

