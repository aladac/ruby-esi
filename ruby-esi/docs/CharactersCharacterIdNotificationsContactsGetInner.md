# ESI::CharactersCharacterIdNotificationsContactsGetInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  |  |
| **notification_id** | **Integer** |  |  |
| **send_date** | **Time** |  |  |
| **sender_character_id** | **Integer** |  |  |
| **standing_level** | **Float** | A number representing the standing level the receiver has been added at by the sender. The standing levels are as follows: -10 -&gt; Terrible | -5 -&gt; Bad |  0 -&gt; Neutral |  5 -&gt; Good |  10 -&gt; Excellent |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CharactersCharacterIdNotificationsContactsGetInner.new(
  message: null,
  notification_id: null,
  send_date: null,
  sender_character_id: null,
  standing_level: null
)
```

