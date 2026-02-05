# ESI::CharactersCharacterIdMailGetInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Integer** | From whom the mail was sent | [optional] |
| **is_read** | **Boolean** |  | [optional] |
| **labels** | **Array&lt;Integer&gt;** |  | [optional] |
| **mail_id** | **Integer** |  | [optional] |
| **recipients** | [**Array&lt;PostCharactersCharacterIdMailRequestRecipientsInner&gt;**](PostCharactersCharacterIdMailRequestRecipientsInner.md) | Recipients of the mail | [optional] |
| **subject** | **String** | Mail subject | [optional] |
| **timestamp** | **Time** | When the mail was sent | [optional] |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CharactersCharacterIdMailGetInner.new(
  from: null,
  is_read: null,
  labels: null,
  mail_id: null,
  recipients: null,
  subject: null,
  timestamp: null
)
```

