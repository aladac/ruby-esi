# ESI::CorporationsCorporationIdMedalsIssuedGetInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | ID of the character who was rewarded this medal |  |
| **issued_at** | **Time** |  |  |
| **issuer_id** | **Integer** | ID of the character who issued the medal |  |
| **medal_id** | **Integer** |  |  |
| **reason** | **String** |  |  |
| **status** | **String** |  |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CorporationsCorporationIdMedalsIssuedGetInner.new(
  character_id: null,
  issued_at: null,
  issuer_id: null,
  medal_id: null,
  reason: null,
  status: null
)
```

