# ESI::AllianceApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_alliances**](AllianceApi.md#get_alliances) | **GET** /alliances | List all alliances |
| [**get_alliances_alliance_id**](AllianceApi.md#get_alliances_alliance_id) | **GET** /alliances/{alliance_id} | Get alliance information |
| [**get_alliances_alliance_id_corporations**](AllianceApi.md#get_alliances_alliance_id_corporations) | **GET** /alliances/{alliance_id}/corporations | List alliance&#39;s corporations |
| [**get_alliances_alliance_id_icons**](AllianceApi.md#get_alliances_alliance_id_icons) | **GET** /alliances/{alliance_id}/icons | Get alliance icon |


## get_alliances

> Array&lt;Integer&gt; get_alliances(x_compatibility_date, opts)

List all alliances

List all active player alliances

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::AllianceApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # List all alliances
  result = api_instance.get_alliances(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling AllianceApi->get_alliances: #{e}"
end
```

#### Using the get_alliances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_alliances_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # List all alliances
  data, status_code, headers = api_instance.get_alliances_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue ESI::ApiError => e
  puts "Error when calling AllianceApi->get_alliances_with_http_info: #{e}"
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

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_alliances_alliance_id

> <AlliancesAllianceIdGet> get_alliances_alliance_id(alliance_id, x_compatibility_date, opts)

Get alliance information

Public information about an alliance

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::AllianceApi.new
alliance_id = 789 # Integer | The ID of the alliance
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get alliance information
  result = api_instance.get_alliances_alliance_id(alliance_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling AllianceApi->get_alliances_alliance_id: #{e}"
end
```

#### Using the get_alliances_alliance_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlliancesAllianceIdGet>, Integer, Hash)> get_alliances_alliance_id_with_http_info(alliance_id, x_compatibility_date, opts)

```ruby
begin
  # Get alliance information
  data, status_code, headers = api_instance.get_alliances_alliance_id_with_http_info(alliance_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlliancesAllianceIdGet>
rescue ESI::ApiError => e
  puts "Error when calling AllianceApi->get_alliances_alliance_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alliance_id** | **Integer** | The ID of the alliance |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**AlliancesAllianceIdGet**](AlliancesAllianceIdGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_alliances_alliance_id_corporations

> Array&lt;Integer&gt; get_alliances_alliance_id_corporations(alliance_id, x_compatibility_date, opts)

List alliance's corporations

List all current member corporations of an alliance

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::AllianceApi.new
alliance_id = 789 # Integer | The ID of the alliance
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # List alliance's corporations
  result = api_instance.get_alliances_alliance_id_corporations(alliance_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling AllianceApi->get_alliances_alliance_id_corporations: #{e}"
end
```

#### Using the get_alliances_alliance_id_corporations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_alliances_alliance_id_corporations_with_http_info(alliance_id, x_compatibility_date, opts)

```ruby
begin
  # List alliance's corporations
  data, status_code, headers = api_instance.get_alliances_alliance_id_corporations_with_http_info(alliance_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue ESI::ApiError => e
  puts "Error when calling AllianceApi->get_alliances_alliance_id_corporations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alliance_id** | **Integer** | The ID of the alliance |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_alliances_alliance_id_icons

> <AlliancesAllianceIdIconsGet> get_alliances_alliance_id_icons(alliance_id, x_compatibility_date, opts)

Get alliance icon

Get the icon urls for a alliance  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::AllianceApi.new
alliance_id = 789 # Integer | The ID of the alliance
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get alliance icon
  result = api_instance.get_alliances_alliance_id_icons(alliance_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling AllianceApi->get_alliances_alliance_id_icons: #{e}"
end
```

#### Using the get_alliances_alliance_id_icons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlliancesAllianceIdIconsGet>, Integer, Hash)> get_alliances_alliance_id_icons_with_http_info(alliance_id, x_compatibility_date, opts)

```ruby
begin
  # Get alliance icon
  data, status_code, headers = api_instance.get_alliances_alliance_id_icons_with_http_info(alliance_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlliancesAllianceIdIconsGet>
rescue ESI::ApiError => e
  puts "Error when calling AllianceApi->get_alliances_alliance_id_icons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alliance_id** | **Integer** | The ID of the alliance |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**AlliancesAllianceIdIconsGet**](AlliancesAllianceIdIconsGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

