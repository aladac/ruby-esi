# ESI::KillmailsApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_killmails_recent**](KillmailsApi.md#get_characters_character_id_killmails_recent) | **GET** /characters/{character_id}/killmails/recent | Get a character&#39;s recent kills and losses |
| [**get_corporations_corporation_id_killmails_recent**](KillmailsApi.md#get_corporations_corporation_id_killmails_recent) | **GET** /corporations/{corporation_id}/killmails/recent | Get a corporation&#39;s recent kills and losses |
| [**get_killmails_killmail_id_killmail_hash**](KillmailsApi.md#get_killmails_killmail_id_killmail_hash) | **GET** /killmails/{killmail_id}/{killmail_hash} | Get a single killmail |


## get_characters_character_id_killmails_recent

> <Array<CharactersCharacterIdKillmailsRecentGetInner>> get_characters_character_id_killmails_recent(character_id, x_compatibility_date, opts)

Get a character's recent kills and losses

Return a list of a character's kills and losses going back 90 days

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::KillmailsApi.new
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
  # Get a character's recent kills and losses
  result = api_instance.get_characters_character_id_killmails_recent(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling KillmailsApi->get_characters_character_id_killmails_recent: #{e}"
end
```

#### Using the get_characters_character_id_killmails_recent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdKillmailsRecentGetInner>>, Integer, Hash)> get_characters_character_id_killmails_recent_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # Get a character's recent kills and losses
  data, status_code, headers = api_instance.get_characters_character_id_killmails_recent_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdKillmailsRecentGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling KillmailsApi->get_characters_character_id_killmails_recent_with_http_info: #{e}"
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

[**Array&lt;CharactersCharacterIdKillmailsRecentGetInner&gt;**](CharactersCharacterIdKillmailsRecentGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_killmails_recent

> <Array<CharactersCharacterIdKillmailsRecentGetInner>> get_corporations_corporation_id_killmails_recent(corporation_id, x_compatibility_date, opts)

Get a corporation's recent kills and losses

Get a list of a corporation's kills and losses going back 90 days

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::KillmailsApi.new
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
  # Get a corporation's recent kills and losses
  result = api_instance.get_corporations_corporation_id_killmails_recent(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling KillmailsApi->get_corporations_corporation_id_killmails_recent: #{e}"
end
```

#### Using the get_corporations_corporation_id_killmails_recent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdKillmailsRecentGetInner>>, Integer, Hash)> get_corporations_corporation_id_killmails_recent_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get a corporation's recent kills and losses
  data, status_code, headers = api_instance.get_corporations_corporation_id_killmails_recent_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdKillmailsRecentGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling KillmailsApi->get_corporations_corporation_id_killmails_recent_with_http_info: #{e}"
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

[**Array&lt;CharactersCharacterIdKillmailsRecentGetInner&gt;**](CharactersCharacterIdKillmailsRecentGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_killmails_killmail_id_killmail_hash

> <KillmailsKillmailIdKillmailHashGet> get_killmails_killmail_id_killmail_hash(killmail_hash, killmail_id, x_compatibility_date, opts)

Get a single killmail

Return a single killmail from its ID and hash

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::KillmailsApi.new
killmail_hash = 'killmail_hash_example' # String | 
killmail_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get a single killmail
  result = api_instance.get_killmails_killmail_id_killmail_hash(killmail_hash, killmail_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling KillmailsApi->get_killmails_killmail_id_killmail_hash: #{e}"
end
```

#### Using the get_killmails_killmail_id_killmail_hash_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KillmailsKillmailIdKillmailHashGet>, Integer, Hash)> get_killmails_killmail_id_killmail_hash_with_http_info(killmail_hash, killmail_id, x_compatibility_date, opts)

```ruby
begin
  # Get a single killmail
  data, status_code, headers = api_instance.get_killmails_killmail_id_killmail_hash_with_http_info(killmail_hash, killmail_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KillmailsKillmailIdKillmailHashGet>
rescue ESI::ApiError => e
  puts "Error when calling KillmailsApi->get_killmails_killmail_id_killmail_hash_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **killmail_hash** | **String** |  |  |
| **killmail_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**KillmailsKillmailIdKillmailHashGet**](KillmailsKillmailIdKillmailHashGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

