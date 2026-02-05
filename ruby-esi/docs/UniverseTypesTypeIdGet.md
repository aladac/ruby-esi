# ESI::UniverseTypesTypeIdGet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capacity** | **Float** |  | [optional] |
| **description** | **String** |  |  |
| **dogma_attributes** | [**Array&lt;DogmaDynamicItemsTypeIdItemIdGetDogmaAttributesInner&gt;**](DogmaDynamicItemsTypeIdItemIdGetDogmaAttributesInner.md) |  | [optional] |
| **dogma_effects** | [**Array&lt;DogmaDynamicItemsTypeIdItemIdGetDogmaEffectsInner&gt;**](DogmaDynamicItemsTypeIdItemIdGetDogmaEffectsInner.md) |  | [optional] |
| **graphic_id** | **Integer** |  | [optional] |
| **group_id** | **Integer** |  |  |
| **icon_id** | **Integer** |  | [optional] |
| **market_group_id** | **Integer** | This only exists for types that can be put on the market | [optional] |
| **mass** | **Float** |  | [optional] |
| **name** | **String** |  |  |
| **packaged_volume** | **Float** |  | [optional] |
| **portion_size** | **Integer** |  | [optional] |
| **published** | **Boolean** |  |  |
| **radius** | **Float** |  | [optional] |
| **type_id** | **Integer** |  |  |
| **volume** | **Float** |  | [optional] |

## Example

```ruby
require 'ruby-esi'

instance = ESI::UniverseTypesTypeIdGet.new(
  capacity: null,
  description: null,
  dogma_attributes: null,
  dogma_effects: null,
  graphic_id: null,
  group_id: null,
  icon_id: null,
  market_group_id: null,
  mass: null,
  name: null,
  packaged_volume: null,
  portion_size: null,
  published: null,
  radius: null,
  type_id: null,
  volume: null
)
```

