# ESI::PostCharactersCharacterIdFittingsRequestItemsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flag** | **String** | Fitting location for the item. Entries placed in &#39;Invalid&#39; will be discarded. If this leaves the fitting with nothing, it will cause an error. |  |
| **quantity** | **Integer** |  |  |
| **type_id** | **Integer** |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::PostCharactersCharacterIdFittingsRequestItemsInner.new(
  flag: null,
  quantity: null,
  type_id: null
)
```

