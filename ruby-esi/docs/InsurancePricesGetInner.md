# ESI::InsurancePricesGetInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **levels** | [**Array&lt;InsurancePricesGetInnerLevelsInner&gt;**](InsurancePricesGetInnerLevelsInner.md) | A list of a available insurance levels for this ship type |  |
| **type_id** | **Integer** |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::InsurancePricesGetInner.new(
  levels: null,
  type_id: null
)
```

