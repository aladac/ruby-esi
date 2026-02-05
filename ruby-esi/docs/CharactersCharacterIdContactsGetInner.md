# ESI::CharactersCharacterIdContactsGetInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **Integer** |  |  |
| **contact_type** | **String** |  |  |
| **is_blocked** | **Boolean** | Whether this contact is in the blocked list. Note a missing value denotes unknown, not true or false | [optional] |
| **is_watched** | **Boolean** | Whether this contact is being watched | [optional] |
| **label_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **standing** | **Float** | Standing of the contact |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CharactersCharacterIdContactsGetInner.new(
  contact_id: null,
  contact_type: null,
  is_blocked: null,
  is_watched: null,
  label_ids: null,
  standing: null
)
```

