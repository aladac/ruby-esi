# ESI::SovereigntyApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_sovereignty_campaigns**](SovereigntyApi.md#get_sovereignty_campaigns) | **GET** /sovereignty/campaigns | List sovereignty campaigns |
| [**get_sovereignty_map**](SovereigntyApi.md#get_sovereignty_map) | **GET** /sovereignty/map | List sovereignty of systems |
| [**get_sovereignty_structures**](SovereigntyApi.md#get_sovereignty_structures) | **GET** /sovereignty/structures | List sovereignty structures |


## get_sovereignty_campaigns

> <Array<SovereigntyCampaignsGetInner>> get_sovereignty_campaigns(x_compatibility_date, opts)

List sovereignty campaigns

Shows sovereignty data for campaigns.

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::SovereigntyApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # List sovereignty campaigns
  result = api_instance.get_sovereignty_campaigns(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling SovereigntyApi->get_sovereignty_campaigns: #{e}"
end
```

#### Using the get_sovereignty_campaigns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SovereigntyCampaignsGetInner>>, Integer, Hash)> get_sovereignty_campaigns_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # List sovereignty campaigns
  data, status_code, headers = api_instance.get_sovereignty_campaigns_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SovereigntyCampaignsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling SovereigntyApi->get_sovereignty_campaigns_with_http_info: #{e}"
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

[**Array&lt;SovereigntyCampaignsGetInner&gt;**](SovereigntyCampaignsGetInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sovereignty_map

> <Array<SovereigntyMapGetInner>> get_sovereignty_map(x_compatibility_date, opts)

List sovereignty of systems

Shows sovereignty information for solar systems

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::SovereigntyApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # List sovereignty of systems
  result = api_instance.get_sovereignty_map(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling SovereigntyApi->get_sovereignty_map: #{e}"
end
```

#### Using the get_sovereignty_map_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SovereigntyMapGetInner>>, Integer, Hash)> get_sovereignty_map_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # List sovereignty of systems
  data, status_code, headers = api_instance.get_sovereignty_map_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SovereigntyMapGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling SovereigntyApi->get_sovereignty_map_with_http_info: #{e}"
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

[**Array&lt;SovereigntyMapGetInner&gt;**](SovereigntyMapGetInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sovereignty_structures

> <Array<SovereigntyStructuresGetInner>> get_sovereignty_structures(x_compatibility_date, opts)

List sovereignty structures

Shows sovereignty data for structures.

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::SovereigntyApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # List sovereignty structures
  result = api_instance.get_sovereignty_structures(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling SovereigntyApi->get_sovereignty_structures: #{e}"
end
```

#### Using the get_sovereignty_structures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SovereigntyStructuresGetInner>>, Integer, Hash)> get_sovereignty_structures_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # List sovereignty structures
  data, status_code, headers = api_instance.get_sovereignty_structures_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SovereigntyStructuresGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling SovereigntyApi->get_sovereignty_structures_with_http_info: #{e}"
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

[**Array&lt;SovereigntyStructuresGetInner&gt;**](SovereigntyStructuresGetInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

