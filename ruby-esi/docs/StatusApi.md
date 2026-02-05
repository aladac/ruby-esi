# ESI::StatusApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_status**](StatusApi.md#get_status) | **GET** /status | Retrieve the uptime and player counts |


## get_status

> <StatusGet> get_status(x_compatibility_date, opts)

Retrieve the uptime and player counts

EVE Server status

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::StatusApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Retrieve the uptime and player counts
  result = api_instance.get_status(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling StatusApi->get_status: #{e}"
end
```

#### Using the get_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatusGet>, Integer, Hash)> get_status_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # Retrieve the uptime and player counts
  data, status_code, headers = api_instance.get_status_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatusGet>
rescue ESI::ApiError => e
  puts "Error when calling StatusApi->get_status_with_http_info: #{e}"
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

[**StatusGet**](StatusGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

