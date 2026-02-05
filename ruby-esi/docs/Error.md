# ESI::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **details** | [**Array&lt;ErrorDetail&gt;**](ErrorDetail.md) | List of individual error details. | [optional] |
| **error** | **String** | Error message. |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::Error.new(
  details: null,
  error: null
)
```

