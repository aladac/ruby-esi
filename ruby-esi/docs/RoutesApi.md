# ESI::RoutesApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_route_origin_destination**](RoutesApi.md#get_route_origin_destination) | **GET** /route/{origin}/{destination} | Get route |


## get_route_origin_destination

> Array&lt;Integer&gt; get_route_origin_destination(destination, origin, x_compatibility_date, opts)

Get route

Get the systems between origin and destination

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::RoutesApi.new
destination = 789 # Integer | 
origin = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  avoid: [3.56], # Array<Integer> | 
  connections: [[3.56]], # Array<Array<Integer>> | 
  flag: 'shortest', # String | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get route
  result = api_instance.get_route_origin_destination(destination, origin, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling RoutesApi->get_route_origin_destination: #{e}"
end
```

#### Using the get_route_origin_destination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_route_origin_destination_with_http_info(destination, origin, x_compatibility_date, opts)

```ruby
begin
  # Get route
  data, status_code, headers = api_instance.get_route_origin_destination_with_http_info(destination, origin, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue ESI::ApiError => e
  puts "Error when calling RoutesApi->get_route_origin_destination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination** | **Integer** |  |  |
| **origin** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **avoid** | [**Array&lt;Integer&gt;**](Integer.md) |  | [optional] |
| **connections** | [**Array&lt;Array&lt;Integer&gt;&gt;**](Array&lt;Integer&gt;.md) |  | [optional] |
| **flag** | **String** |  | [optional][default to &#39;shortest&#39;] |
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

