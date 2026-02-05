# ESI::CharactersSkillqueueSkill

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **finish_date** | **Time** | The date the skill training will finish | [optional] |
| **finished_level** | **Integer** | The level the skill is training for |  |
| **level_end_sp** | **Integer** | The Skill Points at the end of the level | [optional] |
| **level_start_sp** | **Integer** | The Skill Points at the start of the level | [optional] |
| **queue_position** | **Integer** | The position of the skill in the queue |  |
| **skill_id** | **Integer** | The TypeID of the skill |  |
| **start_date** | **Time** | The date the skill training will start/continue | [optional] |
| **training_start_sp** | **Integer** | The Skill Points at the start of training | [optional] |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CharactersSkillqueueSkill.new(
  finish_date: null,
  finished_level: null,
  level_end_sp: null,
  level_start_sp: null,
  queue_position: null,
  skill_id: null,
  start_date: null,
  training_start_sp: null
)
```

