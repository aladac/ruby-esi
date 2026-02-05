# ESI::MetaApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_meta_changelog**](MetaApi.md#get_meta_changelog) | **GET** /meta/changelog | Get changelog |
| [**get_meta_compatibility_dates**](MetaApi.md#get_meta_compatibility_dates) | **GET** /meta/compatibility-dates | Get compatibility dates |


## get_meta_changelog

> <MetaChangelog> get_meta_changelog(x_compatibility_date, opts)

Get changelog

Get the changelog of this API.

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::MetaApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get changelog
  result = api_instance.get_meta_changelog(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling MetaApi->get_meta_changelog: #{e}"
end
```

#### Using the get_meta_changelog_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaChangelog>, Integer, Hash)> get_meta_changelog_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # Get changelog
  data, status_code, headers = api_instance.get_meta_changelog_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaChangelog>
rescue ESI::ApiError => e
  puts "Error when calling MetaApi->get_meta_changelog_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**MetaChangelog**](MetaChangelog.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_meta_compatibility_dates

> <MetaCompatibilityDates> get_meta_compatibility_dates(x_compatibility_date, opts)

Get compatibility dates

Get a list of compatibility dates.

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::MetaApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get compatibility dates
  result = api_instance.get_meta_compatibility_dates(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling MetaApi->get_meta_compatibility_dates: #{e}"
end
```

#### Using the get_meta_compatibility_dates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaCompatibilityDates>, Integer, Hash)> get_meta_compatibility_dates_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # Get compatibility dates
  data, status_code, headers = api_instance.get_meta_compatibility_dates_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaCompatibilityDates>
rescue ESI::ApiError => e
  puts "Error when calling MetaApi->get_meta_compatibility_dates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**MetaCompatibilityDates**](MetaCompatibilityDates.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

