# ESI::WalletApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_wallet**](WalletApi.md#get_characters_character_id_wallet) | **GET** /characters/{character_id}/wallet | Get a character&#39;s wallet balance |
| [**get_characters_character_id_wallet_journal**](WalletApi.md#get_characters_character_id_wallet_journal) | **GET** /characters/{character_id}/wallet/journal | Get character wallet journal |
| [**get_characters_character_id_wallet_transactions**](WalletApi.md#get_characters_character_id_wallet_transactions) | **GET** /characters/{character_id}/wallet/transactions | Get wallet transactions |
| [**get_corporations_corporation_id_wallets**](WalletApi.md#get_corporations_corporation_id_wallets) | **GET** /corporations/{corporation_id}/wallets | Returns a corporation&#39;s wallet balance |
| [**get_corporations_corporation_id_wallets_division_journal**](WalletApi.md#get_corporations_corporation_id_wallets_division_journal) | **GET** /corporations/{corporation_id}/wallets/{division}/journal | Get corporation wallet journal |
| [**get_corporations_corporation_id_wallets_division_transactions**](WalletApi.md#get_corporations_corporation_id_wallets_division_transactions) | **GET** /corporations/{corporation_id}/wallets/{division}/transactions | Get corporation wallet transactions |


## get_characters_character_id_wallet

> Float get_characters_character_id_wallet(character_id, x_compatibility_date, opts)

Get a character's wallet balance

Returns a character's wallet balance

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::WalletApi.new
character_id = 789 # Integer | The ID of the character
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get a character's wallet balance
  result = api_instance.get_characters_character_id_wallet(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling WalletApi->get_characters_character_id_wallet: #{e}"
end
```

#### Using the get_characters_character_id_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Float, Integer, Hash)> get_characters_character_id_wallet_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # Get a character's wallet balance
  data, status_code, headers = api_instance.get_characters_character_id_wallet_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Float
rescue ESI::ApiError => e
  puts "Error when calling WalletApi->get_characters_character_id_wallet_with_http_info: #{e}"
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

**Float**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_wallet_journal

> <Array<CharactersCharacterIdWalletJournalGetInner>> get_characters_character_id_wallet_journal(character_id, x_compatibility_date, opts)

Get character wallet journal

Retrieve the given character's wallet journal going 30 days back

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::WalletApi.new
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
  # Get character wallet journal
  result = api_instance.get_characters_character_id_wallet_journal(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling WalletApi->get_characters_character_id_wallet_journal: #{e}"
end
```

#### Using the get_characters_character_id_wallet_journal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdWalletJournalGetInner>>, Integer, Hash)> get_characters_character_id_wallet_journal_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # Get character wallet journal
  data, status_code, headers = api_instance.get_characters_character_id_wallet_journal_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdWalletJournalGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling WalletApi->get_characters_character_id_wallet_journal_with_http_info: #{e}"
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

[**Array&lt;CharactersCharacterIdWalletJournalGetInner&gt;**](CharactersCharacterIdWalletJournalGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_wallet_transactions

> <Array<CharactersCharacterIdWalletTransactionsGetInner>> get_characters_character_id_wallet_transactions(character_id, x_compatibility_date, opts)

Get wallet transactions

Get wallet transactions of a character

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::WalletApi.new
character_id = 789 # Integer | The ID of the character
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  from_id: 789, # Integer | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get wallet transactions
  result = api_instance.get_characters_character_id_wallet_transactions(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling WalletApi->get_characters_character_id_wallet_transactions: #{e}"
end
```

#### Using the get_characters_character_id_wallet_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdWalletTransactionsGetInner>>, Integer, Hash)> get_characters_character_id_wallet_transactions_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # Get wallet transactions
  data, status_code, headers = api_instance.get_characters_character_id_wallet_transactions_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdWalletTransactionsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling WalletApi->get_characters_character_id_wallet_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **from_id** | **Integer** |  | [optional] |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;CharactersCharacterIdWalletTransactionsGetInner&gt;**](CharactersCharacterIdWalletTransactionsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_wallets

> <Array<CorporationsCorporationIdWalletsGetInner>> get_corporations_corporation_id_wallets(corporation_id, x_compatibility_date, opts)

Returns a corporation's wallet balance

Get a corporation's wallets

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::WalletApi.new
corporation_id = 789 # Integer | The ID of the corporation
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Returns a corporation's wallet balance
  result = api_instance.get_corporations_corporation_id_wallets(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling WalletApi->get_corporations_corporation_id_wallets: #{e}"
end
```

#### Using the get_corporations_corporation_id_wallets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdWalletsGetInner>>, Integer, Hash)> get_corporations_corporation_id_wallets_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Returns a corporation's wallet balance
  data, status_code, headers = api_instance.get_corporations_corporation_id_wallets_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdWalletsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling WalletApi->get_corporations_corporation_id_wallets_with_http_info: #{e}"
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

[**Array&lt;CorporationsCorporationIdWalletsGetInner&gt;**](CorporationsCorporationIdWalletsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_wallets_division_journal

> <Array<CorporationsCorporationIdWalletsDivisionJournalGetInner>> get_corporations_corporation_id_wallets_division_journal(corporation_id, division, x_compatibility_date, opts)

Get corporation wallet journal

Retrieve the given corporation's wallet journal for the given division going 30 days back

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::WalletApi.new
corporation_id = 789 # Integer | The ID of the corporation
division = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  page: 56, # Integer | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get corporation wallet journal
  result = api_instance.get_corporations_corporation_id_wallets_division_journal(corporation_id, division, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling WalletApi->get_corporations_corporation_id_wallets_division_journal: #{e}"
end
```

#### Using the get_corporations_corporation_id_wallets_division_journal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdWalletsDivisionJournalGetInner>>, Integer, Hash)> get_corporations_corporation_id_wallets_division_journal_with_http_info(corporation_id, division, x_compatibility_date, opts)

```ruby
begin
  # Get corporation wallet journal
  data, status_code, headers = api_instance.get_corporations_corporation_id_wallets_division_journal_with_http_info(corporation_id, division, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdWalletsDivisionJournalGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling WalletApi->get_corporations_corporation_id_wallets_division_journal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | The ID of the corporation |  |
| **division** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **page** | **Integer** |  | [optional] |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;CorporationsCorporationIdWalletsDivisionJournalGetInner&gt;**](CorporationsCorporationIdWalletsDivisionJournalGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_wallets_division_transactions

> <Array<CorporationsCorporationIdWalletsDivisionTransactionsGetInner>> get_corporations_corporation_id_wallets_division_transactions(corporation_id, division, x_compatibility_date, opts)

Get corporation wallet transactions

Get wallet transactions of a corporation

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::WalletApi.new
corporation_id = 789 # Integer | The ID of the corporation
division = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  from_id: 789, # Integer | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get corporation wallet transactions
  result = api_instance.get_corporations_corporation_id_wallets_division_transactions(corporation_id, division, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling WalletApi->get_corporations_corporation_id_wallets_division_transactions: #{e}"
end
```

#### Using the get_corporations_corporation_id_wallets_division_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdWalletsDivisionTransactionsGetInner>>, Integer, Hash)> get_corporations_corporation_id_wallets_division_transactions_with_http_info(corporation_id, division, x_compatibility_date, opts)

```ruby
begin
  # Get corporation wallet transactions
  data, status_code, headers = api_instance.get_corporations_corporation_id_wallets_division_transactions_with_http_info(corporation_id, division, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdWalletsDivisionTransactionsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling WalletApi->get_corporations_corporation_id_wallets_division_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | The ID of the corporation |  |
| **division** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **from_id** | **Integer** |  | [optional] |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;CorporationsCorporationIdWalletsDivisionTransactionsGetInner&gt;**](CorporationsCorporationIdWalletsDivisionTransactionsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

