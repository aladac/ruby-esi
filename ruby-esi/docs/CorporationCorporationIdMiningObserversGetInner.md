# ESI::CorporationCorporationIdMiningObserversGetInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_updated** | **Date** |  |  |
| **observer_id** | **Integer** | The entity that was observing the asteroid field when it was mined.  |  |
| **observer_type** | **String** | The category of the observing entity |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CorporationCorporationIdMiningObserversGetInner.new(
  last_updated: null,
  observer_id: null,
  observer_type: null
)
```

