# ESI::ContractsPublicItemsContractIdGetInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_blueprint_copy** | **Boolean** |  | [optional] |
| **is_included** | **Boolean** | true if the contract issuer has submitted this item with the contract, false if the isser is asking for this item in the contract |  |
| **item_id** | **Integer** | Unique ID for the item being sold. Not present if item is being requested by contract rather than sold with contract | [optional] |
| **material_efficiency** | **Integer** | Material Efficiency Level of the blueprint | [optional] |
| **quantity** | **Integer** | Number of items in the stack |  |
| **record_id** | **Integer** | Unique ID for the item, used by the contract system |  |
| **runs** | **Integer** | Number of runs remaining if the blueprint is a copy, -1 if it is an original | [optional] |
| **time_efficiency** | **Integer** | Time Efficiency Level of the blueprint | [optional] |
| **type_id** | **Integer** | Type ID for item |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::ContractsPublicItemsContractIdGetInner.new(
  is_blueprint_copy: null,
  is_included: null,
  item_id: null,
  material_efficiency: null,
  quantity: null,
  record_id: null,
  runs: null,
  time_efficiency: null,
  type_id: null
)
```

