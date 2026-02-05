# ESI::CharactersCharacterIdSearchGet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent** | **Array&lt;Integer&gt;** |  | [optional] |
| **alliance** | **Array&lt;Integer&gt;** |  | [optional] |
| **character** | **Array&lt;Integer&gt;** |  | [optional] |
| **constellation** | **Array&lt;Integer&gt;** |  | [optional] |
| **corporation** | **Array&lt;Integer&gt;** |  | [optional] |
| **faction** | **Array&lt;Integer&gt;** |  | [optional] |
| **inventory_type** | **Array&lt;Integer&gt;** |  | [optional] |
| **region** | **Array&lt;Integer&gt;** |  | [optional] |
| **solar_system** | **Array&lt;Integer&gt;** |  | [optional] |
| **station** | **Array&lt;Integer&gt;** |  | [optional] |
| **structure** | **Array&lt;Integer&gt;** |  | [optional] |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CharactersCharacterIdSearchGet.new(
  agent: null,
  alliance: null,
  character: null,
  constellation: null,
  corporation: null,
  faction: null,
  inventory_type: null,
  region: null,
  solar_system: null,
  station: null,
  structure: null
)
```

