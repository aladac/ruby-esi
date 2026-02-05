# ESI::CharactersCharacterIdCorporationhistoryGetInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** |  |  |
| **is_deleted** | **Boolean** | True if the corporation has been deleted | [optional] |
| **record_id** | **Integer** | An incrementing ID that can be used to canonically establish order of records in cases where dates may be ambiguous |  |
| **start_date** | **Time** |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CharactersCharacterIdCorporationhistoryGetInner.new(
  corporation_id: null,
  is_deleted: null,
  record_id: null,
  start_date: null
)
```

