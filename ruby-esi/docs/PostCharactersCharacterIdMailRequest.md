# ESI::PostCharactersCharacterIdMailRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **approved_cost** | **Integer** |  | [optional][default to 0] |
| **body** | **String** |  |  |
| **recipients** | [**Array&lt;PostCharactersCharacterIdMailRequestRecipientsInner&gt;**](PostCharactersCharacterIdMailRequestRecipientsInner.md) |  |  |
| **subject** | **String** |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::PostCharactersCharacterIdMailRequest.new(
  approved_cost: null,
  body: null,
  recipients: null,
  subject: null
)
```

