# ESI::FittingsApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_characters_character_id_fittings_fitting_id**](FittingsApi.md#delete_characters_character_id_fittings_fitting_id) | **DELETE** /characters/{character_id}/fittings/{fitting_id} | Delete fitting |
| [**get_characters_character_id_fittings**](FittingsApi.md#get_characters_character_id_fittings) | **GET** /characters/{character_id}/fittings | Get fittings |
| [**post_characters_character_id_fittings**](FittingsApi.md#post_characters_character_id_fittings) | **POST** /characters/{character_id}/fittings | Create fitting |


## delete_characters_character_id_fittings_fitting_id

> delete_characters_character_id_fittings_fitting_id(character_id, fitting_id, x_compatibility_date, opts)

Delete fitting

Delete a fitting from a character

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::FittingsApi.new
character_id = 789 # Integer | The ID of the character
fitting_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Delete fitting
  api_instance.delete_characters_character_id_fittings_fitting_id(character_id, fitting_id, x_compatibility_date, opts)
rescue ESI::ApiError => e
  puts "Error when calling FittingsApi->delete_characters_character_id_fittings_fitting_id: #{e}"
end
```

#### Using the delete_characters_character_id_fittings_fitting_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_characters_character_id_fittings_fitting_id_with_http_info(character_id, fitting_id, x_compatibility_date, opts)

```ruby
begin
  # Delete fitting
  data, status_code, headers = api_instance.delete_characters_character_id_fittings_fitting_id_with_http_info(character_id, fitting_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ESI::ApiError => e
  puts "Error when calling FittingsApi->delete_characters_character_id_fittings_fitting_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **fitting_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_fittings

> <Array<CharactersCharacterIdFittingsGetInner>> get_characters_character_id_fittings(character_id, x_compatibility_date, opts)

Get fittings

Return fittings of a character

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::FittingsApi.new
character_id = 789 # Integer | The ID of the character
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get fittings
  result = api_instance.get_characters_character_id_fittings(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling FittingsApi->get_characters_character_id_fittings: #{e}"
end
```

#### Using the get_characters_character_id_fittings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdFittingsGetInner>>, Integer, Hash)> get_characters_character_id_fittings_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # Get fittings
  data, status_code, headers = api_instance.get_characters_character_id_fittings_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdFittingsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling FittingsApi->get_characters_character_id_fittings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;CharactersCharacterIdFittingsGetInner&gt;**](CharactersCharacterIdFittingsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_characters_character_id_fittings

> <CharactersCharacterIdFittingsPost> post_characters_character_id_fittings(character_id, x_compatibility_date, post_characters_character_id_fittings_request, opts)

Create fitting

Save a new fitting for a character

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::FittingsApi.new
character_id = 789 # Integer | The ID of the character
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
post_characters_character_id_fittings_request = ESI::PostCharactersCharacterIdFittingsRequest.new({description: 'description_example', items: [ESI::PostCharactersCharacterIdFittingsRequestItemsInner.new({flag: 'Cargo', quantity: 3.56, type_id: 3.56})], name: 'name_example', ship_type_id: 3.56}) # PostCharactersCharacterIdFittingsRequest | 
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Create fitting
  result = api_instance.post_characters_character_id_fittings(character_id, x_compatibility_date, post_characters_character_id_fittings_request, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling FittingsApi->post_characters_character_id_fittings: #{e}"
end
```

#### Using the post_characters_character_id_fittings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CharactersCharacterIdFittingsPost>, Integer, Hash)> post_characters_character_id_fittings_with_http_info(character_id, x_compatibility_date, post_characters_character_id_fittings_request, opts)

```ruby
begin
  # Create fitting
  data, status_code, headers = api_instance.post_characters_character_id_fittings_with_http_info(character_id, x_compatibility_date, post_characters_character_id_fittings_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CharactersCharacterIdFittingsPost>
rescue ESI::ApiError => e
  puts "Error when calling FittingsApi->post_characters_character_id_fittings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **post_characters_character_id_fittings_request** | [**PostCharactersCharacterIdFittingsRequest**](PostCharactersCharacterIdFittingsRequest.md) |  |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**CharactersCharacterIdFittingsPost**](CharactersCharacterIdFittingsPost.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

