# ESI::PostUiOpenwindowNewmailRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** |  |  |
| **recipients** | **Array&lt;Integer&gt;** |  |  |
| **subject** | **String** |  |  |
| **to_corp_or_alliance_id** | **Integer** |  | [optional] |
| **to_mailing_list_id** | **Integer** | Corporations, alliances and mailing lists are all types of mailing groups. You may only send to one mailing group, at a time, so you may fill out either this field or the to_corp_or_alliance_ids field | [optional] |

## Example

```ruby
require 'ruby-esi'

instance = ESI::PostUiOpenwindowNewmailRequest.new(
  body: null,
  recipients: null,
  subject: null,
  to_corp_or_alliance_id: null,
  to_mailing_list_id: null
)
```

