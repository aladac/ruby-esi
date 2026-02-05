# ESI::MetaChangelogEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **compatibility_date** | **Date** | Compatibility date of the route |  |
| **description** | **String** | Description |  |
| **is_breaking** | **Boolean** | Whether this is a breaking change |  |
| **method** | **String** | HTTP method of the route |  |
| **path** | **String** | Path of the route |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::MetaChangelogEntry.new(
  compatibility_date: null,
  description: null,
  is_breaking: null,
  method: null,
  path: null
)
```

