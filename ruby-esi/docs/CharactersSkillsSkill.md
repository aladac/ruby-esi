# ESI::CharactersSkillsSkill

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_skill_level** | **Integer** | The active skill level (can differ from trained due to alpha status and/or active expert systems) |  |
| **skill_id** | **Integer** | The Type ID of the skill |  |
| **skillpoints_in_skill** | **Integer** | The amount of Skill Points in the skill |  |
| **trained_skill_level** | **Integer** | The trained skill level |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CharactersSkillsSkill.new(
  active_skill_level: null,
  skill_id: null,
  skillpoints_in_skill: null,
  trained_skill_level: null
)
```

