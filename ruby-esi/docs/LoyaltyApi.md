# ESI::LoyaltyApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_loyalty_points**](LoyaltyApi.md#get_characters_character_id_loyalty_points) | **GET** /characters/{character_id}/loyalty/points | Get loyalty points |
| [**get_loyalty_stores_corporation_id_offers**](LoyaltyApi.md#get_loyalty_stores_corporation_id_offers) | **GET** /loyalty/stores/{corporation_id}/offers | List loyalty store offers |


## get_characters_character_id_loyalty_points

> <Array<CharactersCharacterIdLoyaltyPointsGetInner>> get_characters_character_id_loyalty_points(character_id, x_compatibility_date, opts)

Get loyalty points

Return a list of loyalty points for all corporations the character has worked for

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::LoyaltyApi.new
character_id = 789 # Integer | The ID of the character
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get loyalty points
  result = api_instance.get_characters_character_id_loyalty_points(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling LoyaltyApi->get_characters_character_id_loyalty_points: #{e}"
end
```

#### Using the get_characters_character_id_loyalty_points_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdLoyaltyPointsGetInner>>, Integer, Hash)> get_characters_character_id_loyalty_points_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # Get loyalty points
  data, status_code, headers = api_instance.get_characters_character_id_loyalty_points_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdLoyaltyPointsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling LoyaltyApi->get_characters_character_id_loyalty_points_with_http_info: #{e}"
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

[**Array&lt;CharactersCharacterIdLoyaltyPointsGetInner&gt;**](CharactersCharacterIdLoyaltyPointsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_loyalty_stores_corporation_id_offers

> <Array<LoyaltyStoresCorporationIdOffersGetInner>> get_loyalty_stores_corporation_id_offers(corporation_id, x_compatibility_date, opts)

List loyalty store offers

Return a list of offers from a specific corporation's loyalty store  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::LoyaltyApi.new
corporation_id = 789 # Integer | The ID of the corporation
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # List loyalty store offers
  result = api_instance.get_loyalty_stores_corporation_id_offers(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling LoyaltyApi->get_loyalty_stores_corporation_id_offers: #{e}"
end
```

#### Using the get_loyalty_stores_corporation_id_offers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LoyaltyStoresCorporationIdOffersGetInner>>, Integer, Hash)> get_loyalty_stores_corporation_id_offers_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # List loyalty store offers
  data, status_code, headers = api_instance.get_loyalty_stores_corporation_id_offers_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LoyaltyStoresCorporationIdOffersGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling LoyaltyApi->get_loyalty_stores_corporation_id_offers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | The ID of the corporation |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;LoyaltyStoresCorporationIdOffersGetInner&gt;**](LoyaltyStoresCorporationIdOffersGetInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

