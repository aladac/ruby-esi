# ESI::WarsWarIdGetAlliesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alliance_id** | **Integer** | Alliance ID if and only if this ally is an alliance | [optional] |
| **corporation_id** | **Integer** | Corporation ID if and only if this ally is a corporation | [optional] |

## Example

```ruby
require 'ruby-esi'

instance = ESI::WarsWarIdGetAlliesInner.new(
  alliance_id: null,
  corporation_id: null
)
```

