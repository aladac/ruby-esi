# ESI::KillmailsKillmailIdKillmailHashGetAttackersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alliance_id** | **Integer** |  | [optional] |
| **character_id** | **Integer** |  | [optional] |
| **corporation_id** | **Integer** |  | [optional] |
| **damage_done** | **Integer** |  |  |
| **faction_id** | **Integer** |  | [optional] |
| **final_blow** | **Boolean** | Was the attacker the one to achieve the final blow  |  |
| **security_status** | **Float** | Security status for the attacker  |  |
| **ship_type_id** | **Integer** | What ship was the attacker flying  | [optional] |
| **weapon_type_id** | **Integer** | What weapon was used by the attacker for the kill  | [optional] |

## Example

```ruby
require 'ruby-esi'

instance = ESI::KillmailsKillmailIdKillmailHashGetAttackersInner.new(
  alliance_id: null,
  character_id: null,
  corporation_id: null,
  damage_done: null,
  faction_id: null,
  final_blow: null,
  security_status: null,
  ship_type_id: null,
  weapon_type_id: null
)
```

