# ESI::CharactersCharacterIdClonesGet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **home_location** | [**CharactersCharacterIdClonesGetHomeLocation**](CharactersCharacterIdClonesGetHomeLocation.md) |  | [optional] |
| **jump_clones** | [**Array&lt;CharactersCharacterIdClonesGetJumpClonesInner&gt;**](CharactersCharacterIdClonesGetJumpClonesInner.md) |  |  |
| **last_clone_jump_date** | **Time** |  | [optional] |
| **last_station_change_date** | **Time** |  | [optional] |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CharactersCharacterIdClonesGet.new(
  home_location: null,
  jump_clones: null,
  last_clone_jump_date: null,
  last_station_change_date: null
)
```

