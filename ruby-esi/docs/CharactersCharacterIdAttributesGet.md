# ESI::CharactersCharacterIdAttributesGet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accrued_remap_cooldown_date** | **Time** | Neural remapping cooldown after a character uses remap accrued over time | [optional] |
| **bonus_remaps** | **Integer** | Number of available bonus character neural remaps | [optional] |
| **charisma** | **Integer** |  |  |
| **intelligence** | **Integer** |  |  |
| **last_remap_date** | **Time** | Datetime of last neural remap, including usage of bonus remaps | [optional] |
| **memory** | **Integer** |  |  |
| **perception** | **Integer** |  |  |
| **willpower** | **Integer** |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CharactersCharacterIdAttributesGet.new(
  accrued_remap_cooldown_date: null,
  bonus_remaps: null,
  charisma: null,
  intelligence: null,
  last_remap_date: null,
  memory: null,
  perception: null,
  willpower: null
)
```

