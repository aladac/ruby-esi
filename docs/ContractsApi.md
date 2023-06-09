# ESI::ContractsApi

All URIs are relative to *https://esi.evetech.net/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_contracts**](ContractsApi.md#get_characters_character_id_contracts) | **GET** /characters/{character_id}/contracts/ | Get contracts
[**get_characters_character_id_contracts_contract_id_bids**](ContractsApi.md#get_characters_character_id_contracts_contract_id_bids) | **GET** /characters/{character_id}/contracts/{contract_id}/bids/ | Get contract bids
[**get_characters_character_id_contracts_contract_id_items**](ContractsApi.md#get_characters_character_id_contracts_contract_id_items) | **GET** /characters/{character_id}/contracts/{contract_id}/items/ | Get contract items
[**get_contracts_public_bids_contract_id**](ContractsApi.md#get_contracts_public_bids_contract_id) | **GET** /contracts/public/bids/{contract_id}/ | Get public contract bids
[**get_contracts_public_items_contract_id**](ContractsApi.md#get_contracts_public_items_contract_id) | **GET** /contracts/public/items/{contract_id}/ | Get public contract items
[**get_contracts_public_region_id**](ContractsApi.md#get_contracts_public_region_id) | **GET** /contracts/public/{region_id}/ | Get public contracts
[**get_corporations_corporation_id_contracts**](ContractsApi.md#get_corporations_corporation_id_contracts) | **GET** /corporations/{corporation_id}/contracts/ | Get corporation contracts
[**get_corporations_corporation_id_contracts_contract_id_bids**](ContractsApi.md#get_corporations_corporation_id_contracts_contract_id_bids) | **GET** /corporations/{corporation_id}/contracts/{contract_id}/bids/ | Get corporation contract bids
[**get_corporations_corporation_id_contracts_contract_id_items**](ContractsApi.md#get_corporations_corporation_id_contracts_contract_id_items) | **GET** /corporations/{corporation_id}/contracts/{contract_id}/items/ | Get corporation contract items

# **get_characters_character_id_contracts**
> Array&lt;GetCharactersCharacterIdContracts200Ok&gt; get_characters_character_id_contracts(character_id, opts)

Get contracts

Returns contracts available to a character, only if the character is issuer, acceptor or assignee. Only returns contracts no older than 30 days, or if the status is \"in_progress\".  --- Alternate route: `/dev/characters/{character_id}/contracts/`  Alternate route: `/legacy/characters/{character_id}/contracts/`  Alternate route: `/v1/characters/{character_id}/contracts/`  --- This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::ContractsApi.new
character_id = 56 # Integer | An EVE character ID
opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 1, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  #Get contracts
  result = api_instance.get_characters_character_id_contracts(character_id, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling ContractsApi->get_characters_character_id_contracts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **page** | **Integer**| Which page of results to return | [optional] [default to 1]
 **token** | **String**| Access token to use if unable to set a header | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdContracts200Ok&gt;**](GetCharactersCharacterIdContracts200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_contracts_contract_id_bids**
> Array&lt;GetCharactersCharacterIdContractsContractIdBids200Ok&gt; get_characters_character_id_contracts_contract_id_bids(character_id, contract_id, opts)

Get contract bids

Lists bids on a particular auction contract  --- Alternate route: `/dev/characters/{character_id}/contracts/{contract_id}/bids/`  Alternate route: `/legacy/characters/{character_id}/contracts/{contract_id}/bids/`  Alternate route: `/v1/characters/{character_id}/contracts/{contract_id}/bids/`  --- This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::ContractsApi.new
character_id = 56 # Integer | An EVE character ID
contract_id = 56 # Integer | ID of a contract
opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  #Get contract bids
  result = api_instance.get_characters_character_id_contracts_contract_id_bids(character_id, contract_id, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling ContractsApi->get_characters_character_id_contracts_contract_id_bids: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **contract_id** | **Integer**| ID of a contract | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **token** | **String**| Access token to use if unable to set a header | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdContractsContractIdBids200Ok&gt;**](GetCharactersCharacterIdContractsContractIdBids200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_contracts_contract_id_items**
> Array&lt;GetCharactersCharacterIdContractsContractIdItems200Ok&gt; get_characters_character_id_contracts_contract_id_items(character_id, contract_id, opts)

Get contract items

Lists items of a particular contract  --- Alternate route: `/dev/characters/{character_id}/contracts/{contract_id}/items/`  Alternate route: `/legacy/characters/{character_id}/contracts/{contract_id}/items/`  Alternate route: `/v1/characters/{character_id}/contracts/{contract_id}/items/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::ContractsApi.new
character_id = 56 # Integer | An EVE character ID
contract_id = 56 # Integer | ID of a contract
opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  #Get contract items
  result = api_instance.get_characters_character_id_contracts_contract_id_items(character_id, contract_id, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling ContractsApi->get_characters_character_id_contracts_contract_id_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **contract_id** | **Integer**| ID of a contract | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **token** | **String**| Access token to use if unable to set a header | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdContractsContractIdItems200Ok&gt;**](GetCharactersCharacterIdContractsContractIdItems200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_contracts_public_bids_contract_id**
> Array&lt;GetContractsPublicBidsContractId200Ok&gt; get_contracts_public_bids_contract_id(contract_id, opts)

Get public contract bids

Lists bids on a public auction contract  --- Alternate route: `/dev/contracts/public/bids/{contract_id}/`  Alternate route: `/legacy/contracts/public/bids/{contract_id}/`  Alternate route: `/v1/contracts/public/bids/{contract_id}/`  --- This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'ruby-esi'

api_instance = ESI::ContractsApi.new
contract_id = 56 # Integer | ID of a contract
opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 1 # Integer | Which page of results to return
}

begin
  #Get public contract bids
  result = api_instance.get_contracts_public_bids_contract_id(contract_id, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling ContractsApi->get_contracts_public_bids_contract_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_id** | **Integer**| ID of a contract | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **page** | **Integer**| Which page of results to return | [optional] [default to 1]

### Return type

[**Array&lt;GetContractsPublicBidsContractId200Ok&gt;**](GetContractsPublicBidsContractId200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_contracts_public_items_contract_id**
> Array&lt;GetContractsPublicItemsContractId200Ok&gt; get_contracts_public_items_contract_id(contract_id, opts)

Get public contract items

Lists items of a public contract  --- Alternate route: `/dev/contracts/public/items/{contract_id}/`  Alternate route: `/legacy/contracts/public/items/{contract_id}/`  Alternate route: `/v1/contracts/public/items/{contract_id}/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'ruby-esi'

api_instance = ESI::ContractsApi.new
contract_id = 56 # Integer | ID of a contract
opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 1 # Integer | Which page of results to return
}

begin
  #Get public contract items
  result = api_instance.get_contracts_public_items_contract_id(contract_id, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling ContractsApi->get_contracts_public_items_contract_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_id** | **Integer**| ID of a contract | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **page** | **Integer**| Which page of results to return | [optional] [default to 1]

### Return type

[**Array&lt;GetContractsPublicItemsContractId200Ok&gt;**](GetContractsPublicItemsContractId200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_contracts_public_region_id**
> Array&lt;GetContractsPublicRegionId200Ok&gt; get_contracts_public_region_id(region_id, opts)

Get public contracts

Returns a paginated list of all public contracts in the given region  --- Alternate route: `/dev/contracts/public/{region_id}/`  Alternate route: `/legacy/contracts/public/{region_id}/`  Alternate route: `/v1/contracts/public/{region_id}/`  --- This route is cached for up to 1800 seconds

### Example
```ruby
# load the gem
require 'ruby-esi'

api_instance = ESI::ContractsApi.new
region_id = 56 # Integer | An EVE region id
opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 1 # Integer | Which page of results to return
}

begin
  #Get public contracts
  result = api_instance.get_contracts_public_region_id(region_id, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling ContractsApi->get_contracts_public_region_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region_id** | **Integer**| An EVE region id | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **page** | **Integer**| Which page of results to return | [optional] [default to 1]

### Return type

[**Array&lt;GetContractsPublicRegionId200Ok&gt;**](GetContractsPublicRegionId200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_corporations_corporation_id_contracts**
> Array&lt;GetCorporationsCorporationIdContracts200Ok&gt; get_corporations_corporation_id_contracts(corporation_id, opts)

Get corporation contracts

Returns contracts available to a corporation, only if the corporation is issuer, acceptor or assignee. Only returns contracts no older than 30 days, or if the status is \"in_progress\".  --- Alternate route: `/dev/corporations/{corporation_id}/contracts/`  Alternate route: `/legacy/corporations/{corporation_id}/contracts/`  Alternate route: `/v1/corporations/{corporation_id}/contracts/`  --- This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::ContractsApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 1, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  #Get corporation contracts
  result = api_instance.get_corporations_corporation_id_contracts(corporation_id, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling ContractsApi->get_corporations_corporation_id_contracts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| An EVE corporation ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **page** | **Integer**| Which page of results to return | [optional] [default to 1]
 **token** | **String**| Access token to use if unable to set a header | [optional] 

### Return type

[**Array&lt;GetCorporationsCorporationIdContracts200Ok&gt;**](GetCorporationsCorporationIdContracts200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_corporations_corporation_id_contracts_contract_id_bids**
> Array&lt;GetCorporationsCorporationIdContractsContractIdBids200Ok&gt; get_corporations_corporation_id_contracts_contract_id_bids(contract_id, corporation_id, opts)

Get corporation contract bids

Lists bids on a particular auction contract  --- Alternate route: `/dev/corporations/{corporation_id}/contracts/{contract_id}/bids/`  Alternate route: `/legacy/corporations/{corporation_id}/contracts/{contract_id}/bids/`  Alternate route: `/v1/corporations/{corporation_id}/contracts/{contract_id}/bids/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::ContractsApi.new
contract_id = 56 # Integer | ID of a contract
corporation_id = 56 # Integer | An EVE corporation ID
opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 1, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  #Get corporation contract bids
  result = api_instance.get_corporations_corporation_id_contracts_contract_id_bids(contract_id, corporation_id, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling ContractsApi->get_corporations_corporation_id_contracts_contract_id_bids: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_id** | **Integer**| ID of a contract | 
 **corporation_id** | **Integer**| An EVE corporation ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **page** | **Integer**| Which page of results to return | [optional] [default to 1]
 **token** | **String**| Access token to use if unable to set a header | [optional] 

### Return type

[**Array&lt;GetCorporationsCorporationIdContractsContractIdBids200Ok&gt;**](GetCorporationsCorporationIdContractsContractIdBids200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_corporations_corporation_id_contracts_contract_id_items**
> Array&lt;GetCorporationsCorporationIdContractsContractIdItems200Ok&gt; get_corporations_corporation_id_contracts_contract_id_items(contract_id, corporation_id, opts)

Get corporation contract items

Lists items of a particular contract  --- Alternate route: `/dev/corporations/{corporation_id}/contracts/{contract_id}/items/`  Alternate route: `/legacy/corporations/{corporation_id}/contracts/{contract_id}/items/`  Alternate route: `/v1/corporations/{corporation_id}/contracts/{contract_id}/items/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::ContractsApi.new
contract_id = 56 # Integer | ID of a contract
corporation_id = 56 # Integer | An EVE corporation ID
opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  #Get corporation contract items
  result = api_instance.get_corporations_corporation_id_contracts_contract_id_items(contract_id, corporation_id, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling ContractsApi->get_corporations_corporation_id_contracts_contract_id_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_id** | **Integer**| ID of a contract | 
 **corporation_id** | **Integer**| An EVE corporation ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **token** | **String**| Access token to use if unable to set a header | [optional] 

### Return type

[**Array&lt;GetCorporationsCorporationIdContractsContractIdItems200Ok&gt;**](GetCorporationsCorporationIdContractsContractIdItems200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



