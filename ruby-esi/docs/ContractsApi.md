# ESI::ContractsApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_contracts**](ContractsApi.md#get_characters_character_id_contracts) | **GET** /characters/{character_id}/contracts | Get contracts |
| [**get_characters_character_id_contracts_contract_id_bids**](ContractsApi.md#get_characters_character_id_contracts_contract_id_bids) | **GET** /characters/{character_id}/contracts/{contract_id}/bids | Get contract bids |
| [**get_characters_character_id_contracts_contract_id_items**](ContractsApi.md#get_characters_character_id_contracts_contract_id_items) | **GET** /characters/{character_id}/contracts/{contract_id}/items | Get contract items |
| [**get_contracts_public_bids_contract_id**](ContractsApi.md#get_contracts_public_bids_contract_id) | **GET** /contracts/public/bids/{contract_id} | Get public contract bids |
| [**get_contracts_public_items_contract_id**](ContractsApi.md#get_contracts_public_items_contract_id) | **GET** /contracts/public/items/{contract_id} | Get public contract items |
| [**get_contracts_public_region_id**](ContractsApi.md#get_contracts_public_region_id) | **GET** /contracts/public/{region_id} | Get public contracts |
| [**get_corporations_corporation_id_contracts**](ContractsApi.md#get_corporations_corporation_id_contracts) | **GET** /corporations/{corporation_id}/contracts | Get corporation contracts |
| [**get_corporations_corporation_id_contracts_contract_id_bids**](ContractsApi.md#get_corporations_corporation_id_contracts_contract_id_bids) | **GET** /corporations/{corporation_id}/contracts/{contract_id}/bids | Get corporation contract bids |
| [**get_corporations_corporation_id_contracts_contract_id_items**](ContractsApi.md#get_corporations_corporation_id_contracts_contract_id_items) | **GET** /corporations/{corporation_id}/contracts/{contract_id}/items | Get corporation contract items |


## get_characters_character_id_contracts

> <Array<CharactersCharacterIdContractsGetInner>> get_characters_character_id_contracts(character_id, x_compatibility_date, opts)

Get contracts

Returns contracts available to a character, only if the character is issuer, acceptor or assignee. Only returns contracts no older than 30 days, or if the status is \"in_progress\".

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::ContractsApi.new
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
  # Get contracts
  result = api_instance.get_characters_character_id_contracts(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling ContractsApi->get_characters_character_id_contracts: #{e}"
end
```

#### Using the get_characters_character_id_contracts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdContractsGetInner>>, Integer, Hash)> get_characters_character_id_contracts_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # Get contracts
  data, status_code, headers = api_instance.get_characters_character_id_contracts_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdContractsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling ContractsApi->get_characters_character_id_contracts_with_http_info: #{e}"
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

[**Array&lt;CharactersCharacterIdContractsGetInner&gt;**](CharactersCharacterIdContractsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_contracts_contract_id_bids

> <Array<CharactersCharacterIdContractsContractIdBidsGetInner>> get_characters_character_id_contracts_contract_id_bids(character_id, contract_id, x_compatibility_date, opts)

Get contract bids

Lists bids on a particular auction contract

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::ContractsApi.new
character_id = 789 # Integer | The ID of the character
contract_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get contract bids
  result = api_instance.get_characters_character_id_contracts_contract_id_bids(character_id, contract_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling ContractsApi->get_characters_character_id_contracts_contract_id_bids: #{e}"
end
```

#### Using the get_characters_character_id_contracts_contract_id_bids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdContractsContractIdBidsGetInner>>, Integer, Hash)> get_characters_character_id_contracts_contract_id_bids_with_http_info(character_id, contract_id, x_compatibility_date, opts)

```ruby
begin
  # Get contract bids
  data, status_code, headers = api_instance.get_characters_character_id_contracts_contract_id_bids_with_http_info(character_id, contract_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdContractsContractIdBidsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling ContractsApi->get_characters_character_id_contracts_contract_id_bids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **contract_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;CharactersCharacterIdContractsContractIdBidsGetInner&gt;**](CharactersCharacterIdContractsContractIdBidsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_contracts_contract_id_items

> <Array<CharactersCharacterIdContractsContractIdItemsGetInner>> get_characters_character_id_contracts_contract_id_items(character_id, contract_id, x_compatibility_date, opts)

Get contract items

Lists items of a particular contract

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::ContractsApi.new
character_id = 789 # Integer | The ID of the character
contract_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get contract items
  result = api_instance.get_characters_character_id_contracts_contract_id_items(character_id, contract_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling ContractsApi->get_characters_character_id_contracts_contract_id_items: #{e}"
end
```

#### Using the get_characters_character_id_contracts_contract_id_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdContractsContractIdItemsGetInner>>, Integer, Hash)> get_characters_character_id_contracts_contract_id_items_with_http_info(character_id, contract_id, x_compatibility_date, opts)

```ruby
begin
  # Get contract items
  data, status_code, headers = api_instance.get_characters_character_id_contracts_contract_id_items_with_http_info(character_id, contract_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdContractsContractIdItemsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling ContractsApi->get_characters_character_id_contracts_contract_id_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **contract_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;CharactersCharacterIdContractsContractIdItemsGetInner&gt;**](CharactersCharacterIdContractsContractIdItemsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contracts_public_bids_contract_id

> <Array<ContractsPublicBidsContractIdGetInner>> get_contracts_public_bids_contract_id(contract_id, x_compatibility_date, opts)

Get public contract bids

Lists bids on a public auction contract

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::ContractsApi.new
contract_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  page: 56, # Integer | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get public contract bids
  result = api_instance.get_contracts_public_bids_contract_id(contract_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling ContractsApi->get_contracts_public_bids_contract_id: #{e}"
end
```

#### Using the get_contracts_public_bids_contract_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ContractsPublicBidsContractIdGetInner>>, Integer, Hash)> get_contracts_public_bids_contract_id_with_http_info(contract_id, x_compatibility_date, opts)

```ruby
begin
  # Get public contract bids
  data, status_code, headers = api_instance.get_contracts_public_bids_contract_id_with_http_info(contract_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ContractsPublicBidsContractIdGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling ContractsApi->get_contracts_public_bids_contract_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **page** | **Integer** |  | [optional] |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;ContractsPublicBidsContractIdGetInner&gt;**](ContractsPublicBidsContractIdGetInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contracts_public_items_contract_id

> <Array<ContractsPublicItemsContractIdGetInner>> get_contracts_public_items_contract_id(contract_id, x_compatibility_date, opts)

Get public contract items

Lists items of a public contract

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::ContractsApi.new
contract_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  page: 56, # Integer | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get public contract items
  result = api_instance.get_contracts_public_items_contract_id(contract_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling ContractsApi->get_contracts_public_items_contract_id: #{e}"
end
```

#### Using the get_contracts_public_items_contract_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ContractsPublicItemsContractIdGetInner>>, Integer, Hash)> get_contracts_public_items_contract_id_with_http_info(contract_id, x_compatibility_date, opts)

```ruby
begin
  # Get public contract items
  data, status_code, headers = api_instance.get_contracts_public_items_contract_id_with_http_info(contract_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ContractsPublicItemsContractIdGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling ContractsApi->get_contracts_public_items_contract_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **page** | **Integer** |  | [optional] |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;ContractsPublicItemsContractIdGetInner&gt;**](ContractsPublicItemsContractIdGetInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contracts_public_region_id

> <Array<ContractsPublicRegionIdGetInner>> get_contracts_public_region_id(region_id, x_compatibility_date, opts)

Get public contracts

Returns a paginated list of all public contracts in the given region

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::ContractsApi.new
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
  # Get public contracts
  result = api_instance.get_contracts_public_region_id(region_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling ContractsApi->get_contracts_public_region_id: #{e}"
end
```

#### Using the get_contracts_public_region_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ContractsPublicRegionIdGetInner>>, Integer, Hash)> get_contracts_public_region_id_with_http_info(region_id, x_compatibility_date, opts)

```ruby
begin
  # Get public contracts
  data, status_code, headers = api_instance.get_contracts_public_region_id_with_http_info(region_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ContractsPublicRegionIdGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling ContractsApi->get_contracts_public_region_id_with_http_info: #{e}"
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

[**Array&lt;ContractsPublicRegionIdGetInner&gt;**](ContractsPublicRegionIdGetInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_contracts

> <Array<CorporationsCorporationIdContractsGetInner>> get_corporations_corporation_id_contracts(corporation_id, x_compatibility_date, opts)

Get corporation contracts

Returns contracts available to a corporation, only if the corporation is issuer, acceptor or assignee. Only returns contracts no older than 30 days, or if the status is \"in_progress\".

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::ContractsApi.new
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
  # Get corporation contracts
  result = api_instance.get_corporations_corporation_id_contracts(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling ContractsApi->get_corporations_corporation_id_contracts: #{e}"
end
```

#### Using the get_corporations_corporation_id_contracts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdContractsGetInner>>, Integer, Hash)> get_corporations_corporation_id_contracts_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get corporation contracts
  data, status_code, headers = api_instance.get_corporations_corporation_id_contracts_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdContractsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling ContractsApi->get_corporations_corporation_id_contracts_with_http_info: #{e}"
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

[**Array&lt;CorporationsCorporationIdContractsGetInner&gt;**](CorporationsCorporationIdContractsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_contracts_contract_id_bids

> <Array<CharactersCharacterIdContractsContractIdBidsGetInner>> get_corporations_corporation_id_contracts_contract_id_bids(contract_id, corporation_id, x_compatibility_date, opts)

Get corporation contract bids

Lists bids on a particular auction contract

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::ContractsApi.new
contract_id = 789 # Integer | 
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
  # Get corporation contract bids
  result = api_instance.get_corporations_corporation_id_contracts_contract_id_bids(contract_id, corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling ContractsApi->get_corporations_corporation_id_contracts_contract_id_bids: #{e}"
end
```

#### Using the get_corporations_corporation_id_contracts_contract_id_bids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdContractsContractIdBidsGetInner>>, Integer, Hash)> get_corporations_corporation_id_contracts_contract_id_bids_with_http_info(contract_id, corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get corporation contract bids
  data, status_code, headers = api_instance.get_corporations_corporation_id_contracts_contract_id_bids_with_http_info(contract_id, corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdContractsContractIdBidsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling ContractsApi->get_corporations_corporation_id_contracts_contract_id_bids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_id** | **Integer** |  |  |
| **corporation_id** | **Integer** | The ID of the corporation |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **page** | **Integer** |  | [optional] |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;CharactersCharacterIdContractsContractIdBidsGetInner&gt;**](CharactersCharacterIdContractsContractIdBidsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_contracts_contract_id_items

> <Array<CharactersCharacterIdContractsContractIdItemsGetInner>> get_corporations_corporation_id_contracts_contract_id_items(contract_id, corporation_id, x_compatibility_date, opts)

Get corporation contract items

Lists items of a particular contract

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::ContractsApi.new
contract_id = 789 # Integer | 
corporation_id = 789 # Integer | The ID of the corporation
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get corporation contract items
  result = api_instance.get_corporations_corporation_id_contracts_contract_id_items(contract_id, corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling ContractsApi->get_corporations_corporation_id_contracts_contract_id_items: #{e}"
end
```

#### Using the get_corporations_corporation_id_contracts_contract_id_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdContractsContractIdItemsGetInner>>, Integer, Hash)> get_corporations_corporation_id_contracts_contract_id_items_with_http_info(contract_id, corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get corporation contract items
  data, status_code, headers = api_instance.get_corporations_corporation_id_contracts_contract_id_items_with_http_info(contract_id, corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdContractsContractIdItemsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling ContractsApi->get_corporations_corporation_id_contracts_contract_id_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_id** | **Integer** |  |  |
| **corporation_id** | **Integer** | The ID of the corporation |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;CharactersCharacterIdContractsContractIdItemsGetInner&gt;**](CharactersCharacterIdContractsContractIdItemsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

