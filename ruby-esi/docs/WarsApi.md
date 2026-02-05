# ESI::WarsApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_wars**](WarsApi.md#get_wars) | **GET** /wars | List wars |
| [**get_wars_war_id**](WarsApi.md#get_wars_war_id) | **GET** /wars/{war_id} | Get war information |
| [**get_wars_war_id_killmails**](WarsApi.md#get_wars_war_id_killmails) | **GET** /wars/{war_id}/killmails | List kills for a war |


## get_wars

> Array&lt;Integer&gt; get_wars(x_compatibility_date, opts)

List wars

Return a list of wars

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::WarsApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  max_war_id: 789, # Integer | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # List wars
  result = api_instance.get_wars(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling WarsApi->get_wars: #{e}"
end
```

#### Using the get_wars_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_wars_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # List wars
  data, status_code, headers = api_instance.get_wars_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue ESI::ApiError => e
  puts "Error when calling WarsApi->get_wars_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **max_war_id** | **Integer** |  | [optional] |
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


## get_wars_war_id

> <WarsWarIdGet> get_wars_war_id(war_id, x_compatibility_date, opts)

Get war information

Return details about a war

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::WarsApi.new
war_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get war information
  result = api_instance.get_wars_war_id(war_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling WarsApi->get_wars_war_id: #{e}"
end
```

#### Using the get_wars_war_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WarsWarIdGet>, Integer, Hash)> get_wars_war_id_with_http_info(war_id, x_compatibility_date, opts)

```ruby
begin
  # Get war information
  data, status_code, headers = api_instance.get_wars_war_id_with_http_info(war_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WarsWarIdGet>
rescue ESI::ApiError => e
  puts "Error when calling WarsApi->get_wars_war_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **war_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**WarsWarIdGet**](WarsWarIdGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_wars_war_id_killmails

> <Array<CharactersCharacterIdKillmailsRecentGetInner>> get_wars_war_id_killmails(war_id, x_compatibility_date, opts)

List kills for a war

Return a list of kills related to a war

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::WarsApi.new
war_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  page: 56, # Integer | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # List kills for a war
  result = api_instance.get_wars_war_id_killmails(war_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling WarsApi->get_wars_war_id_killmails: #{e}"
end
```

#### Using the get_wars_war_id_killmails_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdKillmailsRecentGetInner>>, Integer, Hash)> get_wars_war_id_killmails_with_http_info(war_id, x_compatibility_date, opts)

```ruby
begin
  # List kills for a war
  data, status_code, headers = api_instance.get_wars_war_id_killmails_with_http_info(war_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdKillmailsRecentGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling WarsApi->get_wars_war_id_killmails_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **war_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **page** | **Integer** |  | [optional] |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;CharactersCharacterIdKillmailsRecentGetInner&gt;**](CharactersCharacterIdKillmailsRecentGetInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

