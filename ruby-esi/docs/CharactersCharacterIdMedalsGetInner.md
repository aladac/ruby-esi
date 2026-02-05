# ESI::CharactersCharacterIdMedalsGetInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** |  |  |
| **date** | **Time** |  |  |
| **description** | **String** |  |  |
| **graphics** | [**Array&lt;CharactersCharacterIdMedalsGetInnerGraphicsInner&gt;**](CharactersCharacterIdMedalsGetInnerGraphicsInner.md) |  |  |
| **issuer_id** | **Integer** |  |  |
| **medal_id** | **Integer** |  |  |
| **reason** | **String** |  |  |
| **status** | **String** |  |  |
| **title** | **String** |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CharactersCharacterIdMedalsGetInner.new(
  corporation_id: null,
  date: null,
  description: null,
  graphics: null,
  issuer_id: null,
  medal_id: null,
  reason: null,
  status: null,
  title: null
)
```

