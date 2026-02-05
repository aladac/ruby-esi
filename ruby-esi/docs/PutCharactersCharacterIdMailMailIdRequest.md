# ESI::PutCharactersCharacterIdMailMailIdRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **labels** | **Array&lt;Integer&gt;** | Labels to assign to the mail. Pre-existing labels are unassigned. | [optional] |
| **read** | **Boolean** | Whether the mail is flagged as read | [optional] |

## Example

```ruby
require 'ruby-esi'

instance = ESI::PutCharactersCharacterIdMailMailIdRequest.new(
  labels: null,
  read: null
)
```

