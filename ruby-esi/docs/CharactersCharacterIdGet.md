# ESI::CharactersCharacterIdGet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alliance_id** | **Integer** | The character&#39;s alliance ID | [optional] |
| **birthday** | **Time** | Creation date of the character |  |
| **bloodline_id** | **Integer** |  |  |
| **corporation_id** | **Integer** | The character&#39;s corporation ID |  |
| **description** | **String** |  | [optional] |
| **faction_id** | **Integer** | ID of the faction the character is fighting for, if the character is enlisted in Factional Warfare | [optional] |
| **gender** | **String** |  |  |
| **name** | **String** |  |  |
| **race_id** | **Integer** |  |  |
| **security_status** | **Float** |  | [optional] |
| **title** | **String** | The individual title of the character | [optional] |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CharactersCharacterIdGet.new(
  alliance_id: null,
  birthday: null,
  bloodline_id: null,
  corporation_id: null,
  description: null,
  faction_id: null,
  gender: null,
  name: null,
  race_id: null,
  security_status: null,
  title: null
)
```

