# ESI::CharactersCharacterIdMailMailIdGet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** | Mail&#39;s body | [optional] |
| **from** | **Integer** | From whom the mail was sent | [optional] |
| **labels** | **Array&lt;Integer&gt;** | Labels attached to the mail | [optional] |
| **read** | **Boolean** | Whether the mail is flagged as read | [optional] |
| **recipients** | [**Array&lt;PostCharactersCharacterIdMailRequestRecipientsInner&gt;**](PostCharactersCharacterIdMailRequestRecipientsInner.md) | Recipients of the mail | [optional] |
| **subject** | **String** | Mail subject | [optional] |
| **timestamp** | **Time** | When the mail was sent | [optional] |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CharactersCharacterIdMailMailIdGet.new(
  body: null,
  from: null,
  labels: null,
  read: null,
  recipients: null,
  subject: null,
  timestamp: null
)
```

