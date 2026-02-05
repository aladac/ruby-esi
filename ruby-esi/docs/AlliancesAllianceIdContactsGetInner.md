# ESI::AlliancesAllianceIdContactsGetInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **Integer** |  |  |
| **contact_type** | **String** |  |  |
| **label_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **standing** | **Float** | Standing of the contact |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::AlliancesAllianceIdContactsGetInner.new(
  contact_id: null,
  contact_type: null,
  label_ids: null,
  standing: null
)
```

