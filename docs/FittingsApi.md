# ESI::FittingsApi

All URIs are relative to *https://esi.evetech.net/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_characters_character_id_fittings_fitting_id**](FittingsApi.md#delete_characters_character_id_fittings_fitting_id) | **DELETE** /characters/{character_id}/fittings/{fitting_id}/ | Delete fitting
[**get_characters_character_id_fittings**](FittingsApi.md#get_characters_character_id_fittings) | **GET** /characters/{character_id}/fittings/ | Get fittings
[**post_characters_character_id_fittings**](FittingsApi.md#post_characters_character_id_fittings) | **POST** /characters/{character_id}/fittings/ | Create fitting

# **delete_characters_character_id_fittings_fitting_id**
> delete_characters_character_id_fittings_fitting_id(character_id, fitting_id, opts)

Delete fitting

Delete a fitting from a character  --- Alternate route: `/dev/characters/{character_id}/fittings/{fitting_id}/`  Alternate route: `/legacy/characters/{character_id}/fittings/{fitting_id}/`  Alternate route: `/v1/characters/{character_id}/fittings/{fitting_id}/` 

### Example
```ruby
# load the gem
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::FittingsApi.new
character_id = 56 # Integer | An EVE character ID
fitting_id = 56 # Integer | ID for a fitting of this character
opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  #Delete fitting
  api_instance.delete_characters_character_id_fittings_fitting_id(character_id, fitting_id, opts)
rescue ESI::ApiError => e
  puts "Exception when calling FittingsApi->delete_characters_character_id_fittings_fitting_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **fitting_id** | **Integer**| ID for a fitting of this character | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_fittings**
> Array&lt;GetCharactersCharacterIdFittings200Ok&gt; get_characters_character_id_fittings(character_id, opts)

Get fittings

Return fittings of a character  --- Alternate route: `/dev/characters/{character_id}/fittings/`  Alternate route: `/v2/characters/{character_id}/fittings/`  --- This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::FittingsApi.new
character_id = 56 # Integer | An EVE character ID
opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  #Get fittings
  result = api_instance.get_characters_character_id_fittings(character_id, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling FittingsApi->get_characters_character_id_fittings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **token** | **String**| Access token to use if unable to set a header | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdFittings200Ok&gt;**](GetCharactersCharacterIdFittings200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_characters_character_id_fittings**
> PostCharactersCharacterIdFittingsCreated post_characters_character_id_fittings(bodycharacter_id, opts)

Create fitting

Save a new fitting for a character  --- Alternate route: `/dev/characters/{character_id}/fittings/`  Alternate route: `/v2/characters/{character_id}/fittings/` 

### Example
```ruby
# load the gem
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::FittingsApi.new
body = ESI::PostCharactersCharacterIdFittingsFitting.new # PostCharactersCharacterIdFittingsFitting | Details about the new fitting
character_id = 56 # Integer | An EVE character ID
opts = { 
  datasource: 'tranquility' # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  #Create fitting
  result = api_instance.post_characters_character_id_fittings(bodycharacter_id, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling FittingsApi->post_characters_character_id_fittings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PostCharactersCharacterIdFittingsFitting**](PostCharactersCharacterIdFittingsFitting.md)| Details about the new fitting | 
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 

### Return type

[**PostCharactersCharacterIdFittingsCreated**](PostCharactersCharacterIdFittingsCreated.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



