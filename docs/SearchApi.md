# ESI::SearchApi

All URIs are relative to *https://esi.evetech.net/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_search**](SearchApi.md#get_characters_character_id_search) | **GET** /characters/{character_id}/search/ | Search on a string

# **get_characters_character_id_search**
> GetCharactersCharacterIdSearchOk get_characters_character_id_search(categories, character_id, search, opts)

Search on a string

Search for entities that match a given sub-string.  --- Alternate route: `/dev/characters/{character_id}/search/`  Alternate route: `/legacy/characters/{character_id}/search/`  Alternate route: `/v3/characters/{character_id}/search/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::SearchApi.new
categories = ['categories_example'] # Array<String> | Type of entities to search for
character_id = 56 # Integer | An EVE character ID
search = 'search_example' # String | The string to search on
opts = { 
  accept_language: 'en', # String | Language to use in the response
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  language: 'en', # String | Language to use in the response, takes precedence over Accept-Language
  strict: false, # BOOLEAN | Whether the search should be a strict match
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  #Search on a string
  result = api_instance.get_characters_character_id_search(categories, character_id, search, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling SearchApi->get_characters_character_id_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categories** | [**Array&lt;String&gt;**](String.md)| Type of entities to search for | 
 **character_id** | **Integer**| An EVE character ID | 
 **search** | **String**| The string to search on | 
 **accept_language** | **String**| Language to use in the response | [optional] [default to en]
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **language** | **String**| Language to use in the response, takes precedence over Accept-Language | [optional] [default to en]
 **strict** | **BOOLEAN**| Whether the search should be a strict match | [optional] [default to false]
 **token** | **String**| Access token to use if unable to set a header | [optional] 

### Return type

[**GetCharactersCharacterIdSearchOk**](GetCharactersCharacterIdSearchOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



