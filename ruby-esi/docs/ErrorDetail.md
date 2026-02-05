# ESI::ErrorDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | Where the error occurred, e.g. &#39;body.items[3].tags&#39; or &#39;path.thing-id&#39; | [optional] |
| **message** | **String** | Error message text | [optional] |
| **value** | **Object** |  | [optional] |

## Example

```ruby
require 'ruby-esi'

instance = ESI::ErrorDetail.new(
  location: null,
  message: null,
  value: null
)
```

