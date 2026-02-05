# ESI::DogmaDynamicItemsTypeIdItemIdGet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_by** | **Integer** | The ID of the character who created the item |  |
| **dogma_attributes** | [**Array&lt;DogmaDynamicItemsTypeIdItemIdGetDogmaAttributesInner&gt;**](DogmaDynamicItemsTypeIdItemIdGetDogmaAttributesInner.md) |  |  |
| **dogma_effects** | [**Array&lt;DogmaDynamicItemsTypeIdItemIdGetDogmaEffectsInner&gt;**](DogmaDynamicItemsTypeIdItemIdGetDogmaEffectsInner.md) |  |  |
| **mutator_type_id** | **Integer** | The type ID of the mutator used to generate the dynamic item. |  |
| **source_type_id** | **Integer** | The type ID of the source item the mutator was applied to create the dynamic item. |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::DogmaDynamicItemsTypeIdItemIdGet.new(
  created_by: null,
  dogma_attributes: null,
  dogma_effects: null,
  mutator_type_id: null,
  source_type_id: null
)
```

