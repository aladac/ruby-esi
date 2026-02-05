# ESI::MarketApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_orders**](MarketApi.md#get_characters_character_id_orders) | **GET** /characters/{character_id}/orders | List open orders from a character |
| [**get_characters_character_id_orders_history**](MarketApi.md#get_characters_character_id_orders_history) | **GET** /characters/{character_id}/orders/history | List historical orders by a character |
| [**get_corporations_corporation_id_orders**](MarketApi.md#get_corporations_corporation_id_orders) | **GET** /corporations/{corporation_id}/orders | List open orders from a corporation |
| [**get_corporations_corporation_id_orders_history**](MarketApi.md#get_corporations_corporation_id_orders_history) | **GET** /corporations/{corporation_id}/orders/history | List historical orders from a corporation |
| [**get_markets_groups**](MarketApi.md#get_markets_groups) | **GET** /markets/groups | Get item groups |
| [**get_markets_groups_market_group_id**](MarketApi.md#get_markets_groups_market_group_id) | **GET** /markets/groups/{market_group_id} | Get item group information |
| [**get_markets_prices**](MarketApi.md#get_markets_prices) | **GET** /markets/prices | List market prices |
| [**get_markets_region_id_history**](MarketApi.md#get_markets_region_id_history) | **GET** /markets/{region_id}/history | List historical market statistics in a region |
| [**get_markets_region_id_orders**](MarketApi.md#get_markets_region_id_orders) | **GET** /markets/{region_id}/orders | List orders in a region |
| [**get_markets_region_id_types**](MarketApi.md#get_markets_region_id_types) | **GET** /markets/{region_id}/types | List type IDs relevant to a market |
| [**get_markets_structures_structure_id**](MarketApi.md#get_markets_structures_structure_id) | **GET** /markets/structures/{structure_id} | List orders in a structure |


## get_characters_character_id_orders

> <Array<CharactersCharacterIdOrdersGetInner>> get_characters_character_id_orders(character_id, x_compatibility_date, opts)

List open orders from a character

List open market orders placed by a character

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::MarketApi.new
character_id = 789 # Integer | The ID of the character
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # List open orders from a character
  result = api_instance.get_characters_character_id_orders(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling MarketApi->get_characters_character_id_orders: #{e}"
end
```

#### Using the get_characters_character_id_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdOrdersGetInner>>, Integer, Hash)> get_characters_character_id_orders_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # List open orders from a character
  data, status_code, headers = api_instance.get_characters_character_id_orders_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdOrdersGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling MarketApi->get_characters_character_id_orders_with_http_info: #{e}"
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

[**Array&lt;CharactersCharacterIdOrdersGetInner&gt;**](CharactersCharacterIdOrdersGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_orders_history

> <Array<CharactersCharacterIdOrdersHistoryGetInner>> get_characters_character_id_orders_history(character_id, x_compatibility_date, opts)

List historical orders by a character

List cancelled and expired market orders placed by a character up to 90 days in the past.

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::MarketApi.new
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
  # List historical orders by a character
  result = api_instance.get_characters_character_id_orders_history(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling MarketApi->get_characters_character_id_orders_history: #{e}"
end
```

#### Using the get_characters_character_id_orders_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdOrdersHistoryGetInner>>, Integer, Hash)> get_characters_character_id_orders_history_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # List historical orders by a character
  data, status_code, headers = api_instance.get_characters_character_id_orders_history_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdOrdersHistoryGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling MarketApi->get_characters_character_id_orders_history_with_http_info: #{e}"
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

[**Array&lt;CharactersCharacterIdOrdersHistoryGetInner&gt;**](CharactersCharacterIdOrdersHistoryGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_orders

> <Array<CorporationsCorporationIdOrdersGetInner>> get_corporations_corporation_id_orders(corporation_id, x_compatibility_date, opts)

List open orders from a corporation

List open market orders placed on behalf of a corporation

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::MarketApi.new
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
  # List open orders from a corporation
  result = api_instance.get_corporations_corporation_id_orders(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling MarketApi->get_corporations_corporation_id_orders: #{e}"
end
```

#### Using the get_corporations_corporation_id_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdOrdersGetInner>>, Integer, Hash)> get_corporations_corporation_id_orders_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # List open orders from a corporation
  data, status_code, headers = api_instance.get_corporations_corporation_id_orders_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdOrdersGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling MarketApi->get_corporations_corporation_id_orders_with_http_info: #{e}"
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

[**Array&lt;CorporationsCorporationIdOrdersGetInner&gt;**](CorporationsCorporationIdOrdersGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_orders_history

> <Array<CorporationsCorporationIdOrdersHistoryGetInner>> get_corporations_corporation_id_orders_history(corporation_id, x_compatibility_date, opts)

List historical orders from a corporation

List cancelled and expired market orders placed on behalf of a corporation up to 90 days in the past.

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::MarketApi.new
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
  # List historical orders from a corporation
  result = api_instance.get_corporations_corporation_id_orders_history(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling MarketApi->get_corporations_corporation_id_orders_history: #{e}"
end
```

#### Using the get_corporations_corporation_id_orders_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdOrdersHistoryGetInner>>, Integer, Hash)> get_corporations_corporation_id_orders_history_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # List historical orders from a corporation
  data, status_code, headers = api_instance.get_corporations_corporation_id_orders_history_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdOrdersHistoryGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling MarketApi->get_corporations_corporation_id_orders_history_with_http_info: #{e}"
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

[**Array&lt;CorporationsCorporationIdOrdersHistoryGetInner&gt;**](CorporationsCorporationIdOrdersHistoryGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_markets_groups

> Array&lt;Integer&gt; get_markets_groups(x_compatibility_date, opts)

Get item groups

Get a list of item groups  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::MarketApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get item groups
  result = api_instance.get_markets_groups(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling MarketApi->get_markets_groups: #{e}"
end
```

#### Using the get_markets_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_markets_groups_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # Get item groups
  data, status_code, headers = api_instance.get_markets_groups_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue ESI::ApiError => e
  puts "Error when calling MarketApi->get_markets_groups_with_http_info: #{e}"
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


## get_markets_groups_market_group_id

> <MarketsGroupsMarketGroupIdGet> get_markets_groups_market_group_id(market_group_id, x_compatibility_date, opts)

Get item group information

Get information on an item group  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::MarketApi.new
market_group_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get item group information
  result = api_instance.get_markets_groups_market_group_id(market_group_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling MarketApi->get_markets_groups_market_group_id: #{e}"
end
```

#### Using the get_markets_groups_market_group_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MarketsGroupsMarketGroupIdGet>, Integer, Hash)> get_markets_groups_market_group_id_with_http_info(market_group_id, x_compatibility_date, opts)

```ruby
begin
  # Get item group information
  data, status_code, headers = api_instance.get_markets_groups_market_group_id_with_http_info(market_group_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MarketsGroupsMarketGroupIdGet>
rescue ESI::ApiError => e
  puts "Error when calling MarketApi->get_markets_groups_market_group_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market_group_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**MarketsGroupsMarketGroupIdGet**](MarketsGroupsMarketGroupIdGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_markets_prices

> <Array<MarketsPricesGetInner>> get_markets_prices(x_compatibility_date, opts)

List market prices

Return a list of prices

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::MarketApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # List market prices
  result = api_instance.get_markets_prices(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling MarketApi->get_markets_prices: #{e}"
end
```

#### Using the get_markets_prices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MarketsPricesGetInner>>, Integer, Hash)> get_markets_prices_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # List market prices
  data, status_code, headers = api_instance.get_markets_prices_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MarketsPricesGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling MarketApi->get_markets_prices_with_http_info: #{e}"
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

[**Array&lt;MarketsPricesGetInner&gt;**](MarketsPricesGetInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_markets_region_id_history

> <Array<MarketsRegionIdHistoryGetInner>> get_markets_region_id_history(region_id, type_id, x_compatibility_date, opts)

List historical market statistics in a region

Return a list of historical market statistics for the specified type in a region  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::MarketApi.new
region_id = 789 # Integer | 
type_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # List historical market statistics in a region
  result = api_instance.get_markets_region_id_history(region_id, type_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling MarketApi->get_markets_region_id_history: #{e}"
end
```

#### Using the get_markets_region_id_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MarketsRegionIdHistoryGetInner>>, Integer, Hash)> get_markets_region_id_history_with_http_info(region_id, type_id, x_compatibility_date, opts)

```ruby
begin
  # List historical market statistics in a region
  data, status_code, headers = api_instance.get_markets_region_id_history_with_http_info(region_id, type_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MarketsRegionIdHistoryGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling MarketApi->get_markets_region_id_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region_id** | **Integer** |  |  |
| **type_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;MarketsRegionIdHistoryGetInner&gt;**](MarketsRegionIdHistoryGetInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_markets_region_id_orders

> <Array<MarketsRegionIdOrdersGetInner>> get_markets_region_id_orders(order_type, region_id, x_compatibility_date, opts)

List orders in a region

Return a list of orders in a region

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::MarketApi.new
order_type = 'buy' # String | 
region_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  page: 56, # Integer | 
  type_id: 789, # Integer | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # List orders in a region
  result = api_instance.get_markets_region_id_orders(order_type, region_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling MarketApi->get_markets_region_id_orders: #{e}"
end
```

#### Using the get_markets_region_id_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MarketsRegionIdOrdersGetInner>>, Integer, Hash)> get_markets_region_id_orders_with_http_info(order_type, region_id, x_compatibility_date, opts)

```ruby
begin
  # List orders in a region
  data, status_code, headers = api_instance.get_markets_region_id_orders_with_http_info(order_type, region_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MarketsRegionIdOrdersGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling MarketApi->get_markets_region_id_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_type** | **String** |  | [default to &#39;all&#39;] |
| **region_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **page** | **Integer** |  | [optional] |
| **type_id** | **Integer** |  | [optional] |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;MarketsRegionIdOrdersGetInner&gt;**](MarketsRegionIdOrdersGetInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_markets_region_id_types

> Array&lt;Integer&gt; get_markets_region_id_types(region_id, x_compatibility_date, opts)

List type IDs relevant to a market

Return a list of type IDs that have active orders in the region, for efficient market indexing.

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::MarketApi.new
region_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  page: 56, # Integer | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # List type IDs relevant to a market
  result = api_instance.get_markets_region_id_types(region_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling MarketApi->get_markets_region_id_types: #{e}"
end
```

#### Using the get_markets_region_id_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_markets_region_id_types_with_http_info(region_id, x_compatibility_date, opts)

```ruby
begin
  # List type IDs relevant to a market
  data, status_code, headers = api_instance.get_markets_region_id_types_with_http_info(region_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue ESI::ApiError => e
  puts "Error when calling MarketApi->get_markets_region_id_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **page** | **Integer** |  | [optional] |
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


## get_markets_structures_structure_id

> <Array<MarketsStructuresStructureIdGetInner>> get_markets_structures_structure_id(structure_id, x_compatibility_date, opts)

List orders in a structure

Return all orders in a structure

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::MarketApi.new
structure_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  page: 56, # Integer | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # List orders in a structure
  result = api_instance.get_markets_structures_structure_id(structure_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling MarketApi->get_markets_structures_structure_id: #{e}"
end
```

#### Using the get_markets_structures_structure_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MarketsStructuresStructureIdGetInner>>, Integer, Hash)> get_markets_structures_structure_id_with_http_info(structure_id, x_compatibility_date, opts)

```ruby
begin
  # List orders in a structure
  data, status_code, headers = api_instance.get_markets_structures_structure_id_with_http_info(structure_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MarketsStructuresStructureIdGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling MarketApi->get_markets_structures_structure_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **structure_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **page** | **Integer** |  | [optional] |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;MarketsStructuresStructureIdGetInner&gt;**](MarketsStructuresStructureIdGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

