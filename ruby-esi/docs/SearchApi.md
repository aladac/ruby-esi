# ESI::SearchApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_search**](SearchApi.md#get_characters_character_id_search) | **GET** /characters/{character_id}/search | Search on a string |


## get_characters_character_id_search

> <CharactersCharacterIdSearchGet> get_characters_character_id_search(categories, character_id, search, x_compatibility_date, opts)

Search on a string

Search for entities that match a given sub-string.

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::SearchApi.new
categories = ['agent'] # Array<String> | 
character_id = 789 # Integer | The ID of the character
search = 'search_example' # String | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  strict: true, # Boolean | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Search on a string
  result = api_instance.get_characters_character_id_search(categories, character_id, search, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling SearchApi->get_characters_character_id_search: #{e}"
end
```

#### Using the get_characters_character_id_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CharactersCharacterIdSearchGet>, Integer, Hash)> get_characters_character_id_search_with_http_info(categories, character_id, search, x_compatibility_date, opts)

```ruby
begin
  # Search on a string
  data, status_code, headers = api_instance.get_characters_character_id_search_with_http_info(categories, character_id, search, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CharactersCharacterIdSearchGet>
rescue ESI::ApiError => e
  puts "Error when calling SearchApi->get_characters_character_id_search_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **categories** | [**Array&lt;String&gt;**](String.md) |  |  |
| **character_id** | **Integer** | The ID of the character |  |
| **search** | **String** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **strict** | **Boolean** |  | [optional][default to false] |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**CharactersCharacterIdSearchGet**](CharactersCharacterIdSearchGet.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

