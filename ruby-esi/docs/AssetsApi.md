# ESI::AssetsApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_assets**](AssetsApi.md#get_characters_character_id_assets) | **GET** /characters/{character_id}/assets | Get character assets |
| [**get_corporations_corporation_id_assets**](AssetsApi.md#get_corporations_corporation_id_assets) | **GET** /corporations/{corporation_id}/assets | Get corporation assets |
| [**post_characters_character_id_assets_locations**](AssetsApi.md#post_characters_character_id_assets_locations) | **POST** /characters/{character_id}/assets/locations | Get character asset locations |
| [**post_characters_character_id_assets_names**](AssetsApi.md#post_characters_character_id_assets_names) | **POST** /characters/{character_id}/assets/names | Get character asset names |
| [**post_corporations_corporation_id_assets_locations**](AssetsApi.md#post_corporations_corporation_id_assets_locations) | **POST** /corporations/{corporation_id}/assets/locations | Get corporation asset locations |
| [**post_corporations_corporation_id_assets_names**](AssetsApi.md#post_corporations_corporation_id_assets_names) | **POST** /corporations/{corporation_id}/assets/names | Get corporation asset names |


## get_characters_character_id_assets

> <Array<CharactersCharacterIdAssetsGetInner>> get_characters_character_id_assets(character_id, x_compatibility_date, opts)

Get character assets

Return a list of the characters assets

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::AssetsApi.new
character_id = 789 # Integer | The ID of the character
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  page: 56, # Integer | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get character assets
  result = api_instance.get_characters_character_id_assets(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling AssetsApi->get_characters_character_id_assets: #{e}"
end
```

#### Using the get_characters_character_id_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdAssetsGetInner>>, Integer, Hash)> get_characters_character_id_assets_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # Get character assets
  data, status_code, headers = api_instance.get_characters_character_id_assets_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdAssetsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling AssetsApi->get_characters_character_id_assets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **page** | **Integer** |  | [optional] |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;CharactersCharacterIdAssetsGetInner&gt;**](CharactersCharacterIdAssetsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_assets

> <Array<CorporationsCorporationIdAssetsGetInner>> get_corporations_corporation_id_assets(corporation_id, x_compatibility_date, opts)

Get corporation assets

Return a list of the corporation assets

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::AssetsApi.new
corporation_id = 789 # Integer | The ID of the corporation
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  page: 56, # Integer | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get corporation assets
  result = api_instance.get_corporations_corporation_id_assets(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling AssetsApi->get_corporations_corporation_id_assets: #{e}"
end
```

#### Using the get_corporations_corporation_id_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdAssetsGetInner>>, Integer, Hash)> get_corporations_corporation_id_assets_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get corporation assets
  data, status_code, headers = api_instance.get_corporations_corporation_id_assets_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdAssetsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling AssetsApi->get_corporations_corporation_id_assets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | The ID of the corporation |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **page** | **Integer** |  | [optional] |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;CorporationsCorporationIdAssetsGetInner&gt;**](CorporationsCorporationIdAssetsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_characters_character_id_assets_locations

> <Array<CharactersCharacterIdAssetsLocationsPostInner>> post_characters_character_id_assets_locations(character_id, x_compatibility_date, request_body, opts)

Get character asset locations

Return locations for a set of item ids, which you can get from character assets endpoint. Coordinates for items in hangars or stations are set to (0,0,0)

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::AssetsApi.new
character_id = 789 # Integer | The ID of the character
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
request_body = [3.56] # Array<Integer> | 
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get character asset locations
  result = api_instance.post_characters_character_id_assets_locations(character_id, x_compatibility_date, request_body, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling AssetsApi->post_characters_character_id_assets_locations: #{e}"
end
```

#### Using the post_characters_character_id_assets_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdAssetsLocationsPostInner>>, Integer, Hash)> post_characters_character_id_assets_locations_with_http_info(character_id, x_compatibility_date, request_body, opts)

```ruby
begin
  # Get character asset locations
  data, status_code, headers = api_instance.post_characters_character_id_assets_locations_with_http_info(character_id, x_compatibility_date, request_body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdAssetsLocationsPostInner>>
rescue ESI::ApiError => e
  puts "Error when calling AssetsApi->post_characters_character_id_assets_locations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **request_body** | [**Array&lt;Integer&gt;**](Integer.md) |  |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;CharactersCharacterIdAssetsLocationsPostInner&gt;**](CharactersCharacterIdAssetsLocationsPostInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_characters_character_id_assets_names

> <Array<CharactersCharacterIdAssetsNamesPostInner>> post_characters_character_id_assets_names(character_id, x_compatibility_date, request_body, opts)

Get character asset names

Return names for a set of item ids, which you can get from character assets endpoint. Typically used for items that can customize names, like containers or ships.

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::AssetsApi.new
character_id = 789 # Integer | The ID of the character
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
request_body = [3.56] # Array<Integer> | 
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get character asset names
  result = api_instance.post_characters_character_id_assets_names(character_id, x_compatibility_date, request_body, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling AssetsApi->post_characters_character_id_assets_names: #{e}"
end
```

#### Using the post_characters_character_id_assets_names_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdAssetsNamesPostInner>>, Integer, Hash)> post_characters_character_id_assets_names_with_http_info(character_id, x_compatibility_date, request_body, opts)

```ruby
begin
  # Get character asset names
  data, status_code, headers = api_instance.post_characters_character_id_assets_names_with_http_info(character_id, x_compatibility_date, request_body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdAssetsNamesPostInner>>
rescue ESI::ApiError => e
  puts "Error when calling AssetsApi->post_characters_character_id_assets_names_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **request_body** | [**Array&lt;Integer&gt;**](Integer.md) |  |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;CharactersCharacterIdAssetsNamesPostInner&gt;**](CharactersCharacterIdAssetsNamesPostInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_corporations_corporation_id_assets_locations

> <Array<CharactersCharacterIdAssetsLocationsPostInner>> post_corporations_corporation_id_assets_locations(corporation_id, x_compatibility_date, request_body, opts)

Get corporation asset locations

Return locations for a set of item ids, which you can get from corporation assets endpoint. Coordinates for items in hangars or stations are set to (0,0,0)

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::AssetsApi.new
corporation_id = 789 # Integer | The ID of the corporation
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
request_body = [3.56] # Array<Integer> | 
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get corporation asset locations
  result = api_instance.post_corporations_corporation_id_assets_locations(corporation_id, x_compatibility_date, request_body, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling AssetsApi->post_corporations_corporation_id_assets_locations: #{e}"
end
```

#### Using the post_corporations_corporation_id_assets_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdAssetsLocationsPostInner>>, Integer, Hash)> post_corporations_corporation_id_assets_locations_with_http_info(corporation_id, x_compatibility_date, request_body, opts)

```ruby
begin
  # Get corporation asset locations
  data, status_code, headers = api_instance.post_corporations_corporation_id_assets_locations_with_http_info(corporation_id, x_compatibility_date, request_body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdAssetsLocationsPostInner>>
rescue ESI::ApiError => e
  puts "Error when calling AssetsApi->post_corporations_corporation_id_assets_locations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | The ID of the corporation |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **request_body** | [**Array&lt;Integer&gt;**](Integer.md) |  |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;CharactersCharacterIdAssetsLocationsPostInner&gt;**](CharactersCharacterIdAssetsLocationsPostInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_corporations_corporation_id_assets_names

> <Array<CharactersCharacterIdAssetsNamesPostInner>> post_corporations_corporation_id_assets_names(corporation_id, x_compatibility_date, request_body, opts)

Get corporation asset names

Return names for a set of item ids, which you can get from corporation assets endpoint. Only valid for items that can customize names, like containers or ships

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::AssetsApi.new
corporation_id = 789 # Integer | The ID of the corporation
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
request_body = [3.56] # Array<Integer> | 
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get corporation asset names
  result = api_instance.post_corporations_corporation_id_assets_names(corporation_id, x_compatibility_date, request_body, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling AssetsApi->post_corporations_corporation_id_assets_names: #{e}"
end
```

#### Using the post_corporations_corporation_id_assets_names_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdAssetsNamesPostInner>>, Integer, Hash)> post_corporations_corporation_id_assets_names_with_http_info(corporation_id, x_compatibility_date, request_body, opts)

```ruby
begin
  # Get corporation asset names
  data, status_code, headers = api_instance.post_corporations_corporation_id_assets_names_with_http_info(corporation_id, x_compatibility_date, request_body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdAssetsNamesPostInner>>
rescue ESI::ApiError => e
  puts "Error when calling AssetsApi->post_corporations_corporation_id_assets_names_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | The ID of the corporation |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **request_body** | [**Array&lt;Integer&gt;**](Integer.md) |  |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;CharactersCharacterIdAssetsNamesPostInner&gt;**](CharactersCharacterIdAssetsNamesPostInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

