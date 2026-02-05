# ESI::CorporationsCorporationIdContactsGetInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **Integer** |  |  |
| **contact_type** | **String** |  |  |
| **is_watched** | **Boolean** | Whether this contact is being watched | [optional] |
| **label_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **standing** | **Float** | Standing of the contact |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CorporationsCorporationIdContactsGetInner.new(
  contact_id: null,
  contact_type: null,
  is_watched: null,
  label_ids: null,
  standing: null
)
```

