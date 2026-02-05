# ESI::MetaChangelog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **changelog** | **Hash&lt;String, Array&lt;MetaChangelogEntry&gt;&gt;** | Per date, list changes for that date |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::MetaChangelog.new(
  changelog: null
)
```

