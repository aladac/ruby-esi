# ESI::UniverseSystemKillsGetInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **npc_kills** | **Integer** | Number of NPC ships killed in this system |  |
| **pod_kills** | **Integer** | Number of pods killed in this system |  |
| **ship_kills** | **Integer** | Number of player ships killed in this system |  |
| **system_id** | **Integer** |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::UniverseSystemKillsGetInner.new(
  npc_kills: null,
  pod_kills: null,
  ship_kills: null,
  system_id: null
)
```

