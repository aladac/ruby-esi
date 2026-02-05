# ESI::CharactersSkills

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **skills** | [**Array&lt;CharactersSkillsSkill&gt;**](CharactersSkillsSkill.md) | The trained skills |  |
| **total_sp** | **Integer** | The total Skill Points spent on skills |  |
| **unallocated_sp** | **Integer** | The amount of unallocated Skill Points | [optional] |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CharactersSkills.new(
  skills: null,
  total_sp: null,
  unallocated_sp: null
)
```

