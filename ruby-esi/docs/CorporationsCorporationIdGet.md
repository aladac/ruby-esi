# ESI::CorporationsCorporationIdGet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alliance_id** | **Integer** | ID of the alliance that corporation is a member of, if any | [optional] |
| **ceo_id** | **Integer** |  |  |
| **creator_id** | **Integer** |  |  |
| **date_founded** | **Time** |  | [optional] |
| **description** | **String** |  | [optional] |
| **faction_id** | **Integer** |  | [optional] |
| **home_station_id** | **Integer** |  | [optional] |
| **member_count** | **Integer** |  |  |
| **name** | **String** | the full name of the corporation |  |
| **shares** | **Integer** |  | [optional] |
| **tax_rate** | **Float** |  |  |
| **ticker** | **String** | the short name of the corporation |  |
| **url** | **String** |  | [optional] |
| **war_eligible** | **Boolean** |  | [optional] |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CorporationsCorporationIdGet.new(
  alliance_id: null,
  ceo_id: null,
  creator_id: null,
  date_founded: null,
  description: null,
  faction_id: null,
  home_station_id: null,
  member_count: null,
  name: null,
  shares: null,
  tax_rate: null,
  ticker: null,
  url: null,
  war_eligible: null
)
```

