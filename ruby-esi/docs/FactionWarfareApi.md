# ESI::FactionWarfareApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_fw_stats**](FactionWarfareApi.md#get_characters_character_id_fw_stats) | **GET** /characters/{character_id}/fw/stats | Overview of a character involved in faction warfare |
| [**get_corporations_corporation_id_fw_stats**](FactionWarfareApi.md#get_corporations_corporation_id_fw_stats) | **GET** /corporations/{corporation_id}/fw/stats | Overview of a corporation involved in faction warfare |
| [**get_fw_leaderboards**](FactionWarfareApi.md#get_fw_leaderboards) | **GET** /fw/leaderboards | List of the top factions in faction warfare |
| [**get_fw_leaderboards_characters**](FactionWarfareApi.md#get_fw_leaderboards_characters) | **GET** /fw/leaderboards/characters | List of the top pilots in faction warfare |
| [**get_fw_leaderboards_corporations**](FactionWarfareApi.md#get_fw_leaderboards_corporations) | **GET** /fw/leaderboards/corporations | List of the top corporations in faction warfare |
| [**get_fw_stats**](FactionWarfareApi.md#get_fw_stats) | **GET** /fw/stats | An overview of statistics about factions involved in faction warfare |
| [**get_fw_systems**](FactionWarfareApi.md#get_fw_systems) | **GET** /fw/systems | Ownership of faction warfare systems |
| [**get_fw_wars**](FactionWarfareApi.md#get_fw_wars) | **GET** /fw/wars | Data about which NPC factions are at war |


## get_characters_character_id_fw_stats

> <CharactersCharacterIdFwStatsGet> get_characters_character_id_fw_stats(character_id, x_compatibility_date, opts)

Overview of a character involved in faction warfare

Statistical overview of a character involved in faction warfare  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::FactionWarfareApi.new
character_id = 789 # Integer | The ID of the character
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Overview of a character involved in faction warfare
  result = api_instance.get_characters_character_id_fw_stats(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling FactionWarfareApi->get_characters_character_id_fw_stats: #{e}"
end
```

#### Using the get_characters_character_id_fw_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CharactersCharacterIdFwStatsGet>, Integer, Hash)> get_characters_character_id_fw_stats_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # Overview of a character involved in faction warfare
  data, status_code, headers = api_instance.get_characters_character_id_fw_stats_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CharactersCharacterIdFwStatsGet>
rescue ESI::ApiError => e
  puts "Error when calling FactionWarfareApi->get_characters_character_id_fw_stats_with_http_info: #{e}"
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

[**CharactersCharacterIdFwStatsGet**](CharactersCharacterIdFwStatsGet.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_fw_stats

> <CorporationsCorporationIdFwStatsGet> get_corporations_corporation_id_fw_stats(corporation_id, x_compatibility_date, opts)

Overview of a corporation involved in faction warfare

Statistics about a corporation involved in faction warfare  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::FactionWarfareApi.new
corporation_id = 789 # Integer | The ID of the corporation
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Overview of a corporation involved in faction warfare
  result = api_instance.get_corporations_corporation_id_fw_stats(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling FactionWarfareApi->get_corporations_corporation_id_fw_stats: #{e}"
end
```

#### Using the get_corporations_corporation_id_fw_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CorporationsCorporationIdFwStatsGet>, Integer, Hash)> get_corporations_corporation_id_fw_stats_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Overview of a corporation involved in faction warfare
  data, status_code, headers = api_instance.get_corporations_corporation_id_fw_stats_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CorporationsCorporationIdFwStatsGet>
rescue ESI::ApiError => e
  puts "Error when calling FactionWarfareApi->get_corporations_corporation_id_fw_stats_with_http_info: #{e}"
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

[**CorporationsCorporationIdFwStatsGet**](CorporationsCorporationIdFwStatsGet.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fw_leaderboards

> <FwLeaderboardsGet> get_fw_leaderboards(x_compatibility_date, opts)

List of the top factions in faction warfare

Top 4 leaderboard of factions for kills and victory points separated by total, last week and yesterday  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::FactionWarfareApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # List of the top factions in faction warfare
  result = api_instance.get_fw_leaderboards(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_leaderboards: #{e}"
end
```

#### Using the get_fw_leaderboards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwLeaderboardsGet>, Integer, Hash)> get_fw_leaderboards_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # List of the top factions in faction warfare
  data, status_code, headers = api_instance.get_fw_leaderboards_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwLeaderboardsGet>
rescue ESI::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_leaderboards_with_http_info: #{e}"
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

[**FwLeaderboardsGet**](FwLeaderboardsGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fw_leaderboards_characters

> <FwLeaderboardsCharactersGet> get_fw_leaderboards_characters(x_compatibility_date, opts)

List of the top pilots in faction warfare

Top 100 leaderboard of pilots for kills and victory points separated by total, last week and yesterday  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::FactionWarfareApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # List of the top pilots in faction warfare
  result = api_instance.get_fw_leaderboards_characters(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_leaderboards_characters: #{e}"
end
```

#### Using the get_fw_leaderboards_characters_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwLeaderboardsCharactersGet>, Integer, Hash)> get_fw_leaderboards_characters_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # List of the top pilots in faction warfare
  data, status_code, headers = api_instance.get_fw_leaderboards_characters_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwLeaderboardsCharactersGet>
rescue ESI::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_leaderboards_characters_with_http_info: #{e}"
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

[**FwLeaderboardsCharactersGet**](FwLeaderboardsCharactersGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fw_leaderboards_corporations

> <FwLeaderboardsCorporationsGet> get_fw_leaderboards_corporations(x_compatibility_date, opts)

List of the top corporations in faction warfare

Top 10 leaderboard of corporations for kills and victory points separated by total, last week and yesterday  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::FactionWarfareApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # List of the top corporations in faction warfare
  result = api_instance.get_fw_leaderboards_corporations(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_leaderboards_corporations: #{e}"
end
```

#### Using the get_fw_leaderboards_corporations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FwLeaderboardsCorporationsGet>, Integer, Hash)> get_fw_leaderboards_corporations_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # List of the top corporations in faction warfare
  data, status_code, headers = api_instance.get_fw_leaderboards_corporations_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FwLeaderboardsCorporationsGet>
rescue ESI::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_leaderboards_corporations_with_http_info: #{e}"
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

[**FwLeaderboardsCorporationsGet**](FwLeaderboardsCorporationsGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fw_stats

> <Array<FwStatsGetInner>> get_fw_stats(x_compatibility_date, opts)

An overview of statistics about factions involved in faction warfare

Statistical overviews of factions involved in faction warfare  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::FactionWarfareApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # An overview of statistics about factions involved in faction warfare
  result = api_instance.get_fw_stats(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_stats: #{e}"
end
```

#### Using the get_fw_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<FwStatsGetInner>>, Integer, Hash)> get_fw_stats_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # An overview of statistics about factions involved in faction warfare
  data, status_code, headers = api_instance.get_fw_stats_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<FwStatsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_stats_with_http_info: #{e}"
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

[**Array&lt;FwStatsGetInner&gt;**](FwStatsGetInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fw_systems

> <Array<FwSystemsGetInner>> get_fw_systems(x_compatibility_date, opts)

Ownership of faction warfare systems

An overview of the current ownership of faction warfare solar systems

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::FactionWarfareApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Ownership of faction warfare systems
  result = api_instance.get_fw_systems(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_systems: #{e}"
end
```

#### Using the get_fw_systems_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<FwSystemsGetInner>>, Integer, Hash)> get_fw_systems_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # Ownership of faction warfare systems
  data, status_code, headers = api_instance.get_fw_systems_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<FwSystemsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_systems_with_http_info: #{e}"
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

[**Array&lt;FwSystemsGetInner&gt;**](FwSystemsGetInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fw_wars

> <Array<FwWarsGetInner>> get_fw_wars(x_compatibility_date, opts)

Data about which NPC factions are at war

Data about which NPC factions are at war  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::FactionWarfareApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Data about which NPC factions are at war
  result = api_instance.get_fw_wars(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_wars: #{e}"
end
```

#### Using the get_fw_wars_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<FwWarsGetInner>>, Integer, Hash)> get_fw_wars_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # Data about which NPC factions are at war
  data, status_code, headers = api_instance.get_fw_wars_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<FwWarsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_wars_with_http_info: #{e}"
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

[**Array&lt;FwWarsGetInner&gt;**](FwWarsGetInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

