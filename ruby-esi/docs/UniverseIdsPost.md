# ESI::UniverseIdsPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agents** | [**Array&lt;UniverseIdsPostAgentsInner&gt;**](UniverseIdsPostAgentsInner.md) |  | [optional] |
| **alliances** | [**Array&lt;UniverseIdsPostAlliancesInner&gt;**](UniverseIdsPostAlliancesInner.md) |  | [optional] |
| **characters** | [**Array&lt;UniverseIdsPostCharactersInner&gt;**](UniverseIdsPostCharactersInner.md) |  | [optional] |
| **constellations** | [**Array&lt;UniverseIdsPostConstellationsInner&gt;**](UniverseIdsPostConstellationsInner.md) |  | [optional] |
| **corporations** | [**Array&lt;UniverseIdsPostCorporationsInner&gt;**](UniverseIdsPostCorporationsInner.md) |  | [optional] |
| **factions** | [**Array&lt;UniverseIdsPostFactionsInner&gt;**](UniverseIdsPostFactionsInner.md) |  | [optional] |
| **inventory_types** | [**Array&lt;UniverseIdsPostInventoryTypesInner&gt;**](UniverseIdsPostInventoryTypesInner.md) |  | [optional] |
| **regions** | [**Array&lt;UniverseIdsPostRegionsInner&gt;**](UniverseIdsPostRegionsInner.md) |  | [optional] |
| **stations** | [**Array&lt;UniverseIdsPostStationsInner&gt;**](UniverseIdsPostStationsInner.md) |  | [optional] |
| **systems** | [**Array&lt;UniverseIdsPostSystemsInner&gt;**](UniverseIdsPostSystemsInner.md) |  | [optional] |

## Example

```ruby
require 'ruby-esi'

instance = ESI::UniverseIdsPost.new(
  agents: null,
  alliances: null,
  characters: null,
  constellations: null,
  corporations: null,
  factions: null,
  inventory_types: null,
  regions: null,
  stations: null,
  systems: null
)
```

