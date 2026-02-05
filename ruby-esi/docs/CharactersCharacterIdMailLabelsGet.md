# ESI::CharactersCharacterIdMailLabelsGet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **labels** | [**Array&lt;CharactersCharacterIdMailLabelsGetLabelsInner&gt;**](CharactersCharacterIdMailLabelsGetLabelsInner.md) |  | [optional] |
| **total_unread_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CharactersCharacterIdMailLabelsGet.new(
  labels: null,
  total_unread_count: null
)
```

