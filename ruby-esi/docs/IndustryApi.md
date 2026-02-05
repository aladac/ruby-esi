# ESI::IndustryApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_industry_jobs**](IndustryApi.md#get_characters_character_id_industry_jobs) | **GET** /characters/{character_id}/industry/jobs | List character industry jobs |
| [**get_characters_character_id_mining**](IndustryApi.md#get_characters_character_id_mining) | **GET** /characters/{character_id}/mining | Character mining ledger |
| [**get_corporation_corporation_id_mining_extractions**](IndustryApi.md#get_corporation_corporation_id_mining_extractions) | **GET** /corporation/{corporation_id}/mining/extractions | Moon extraction timers |
| [**get_corporation_corporation_id_mining_observers**](IndustryApi.md#get_corporation_corporation_id_mining_observers) | **GET** /corporation/{corporation_id}/mining/observers | Corporation mining observers |
| [**get_corporation_corporation_id_mining_observers_observer_id**](IndustryApi.md#get_corporation_corporation_id_mining_observers_observer_id) | **GET** /corporation/{corporation_id}/mining/observers/{observer_id} | Observed corporation mining |
| [**get_corporations_corporation_id_industry_jobs**](IndustryApi.md#get_corporations_corporation_id_industry_jobs) | **GET** /corporations/{corporation_id}/industry/jobs | List corporation industry jobs |
| [**get_industry_facilities**](IndustryApi.md#get_industry_facilities) | **GET** /industry/facilities | List industry facilities |
| [**get_industry_systems**](IndustryApi.md#get_industry_systems) | **GET** /industry/systems | List solar system cost indices |


## get_characters_character_id_industry_jobs

> <Array<CharactersCharacterIdIndustryJobsGetInner>> get_characters_character_id_industry_jobs(character_id, x_compatibility_date, opts)

List character industry jobs

List industry jobs placed by a character

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::IndustryApi.new
character_id = 789 # Integer | The ID of the character
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  include_completed: true, # Boolean | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # List character industry jobs
  result = api_instance.get_characters_character_id_industry_jobs(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling IndustryApi->get_characters_character_id_industry_jobs: #{e}"
end
```

#### Using the get_characters_character_id_industry_jobs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdIndustryJobsGetInner>>, Integer, Hash)> get_characters_character_id_industry_jobs_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # List character industry jobs
  data, status_code, headers = api_instance.get_characters_character_id_industry_jobs_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdIndustryJobsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling IndustryApi->get_characters_character_id_industry_jobs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **include_completed** | **Boolean** |  | [optional] |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;CharactersCharacterIdIndustryJobsGetInner&gt;**](CharactersCharacterIdIndustryJobsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_mining

> <Array<CharactersCharacterIdMiningGetInner>> get_characters_character_id_mining(character_id, x_compatibility_date, opts)

Character mining ledger

Paginated record of all mining done by a character for the past 30 days

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::IndustryApi.new
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
  # Character mining ledger
  result = api_instance.get_characters_character_id_mining(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling IndustryApi->get_characters_character_id_mining: #{e}"
end
```

#### Using the get_characters_character_id_mining_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdMiningGetInner>>, Integer, Hash)> get_characters_character_id_mining_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # Character mining ledger
  data, status_code, headers = api_instance.get_characters_character_id_mining_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdMiningGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling IndustryApi->get_characters_character_id_mining_with_http_info: #{e}"
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

[**Array&lt;CharactersCharacterIdMiningGetInner&gt;**](CharactersCharacterIdMiningGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporation_corporation_id_mining_extractions

> <Array<CorporationCorporationIdMiningExtractionsGetInner>> get_corporation_corporation_id_mining_extractions(corporation_id, x_compatibility_date, opts)

Moon extraction timers

Extraction timers for all moon chunks being extracted by refineries belonging to a corporation.

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::IndustryApi.new
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
  # Moon extraction timers
  result = api_instance.get_corporation_corporation_id_mining_extractions(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling IndustryApi->get_corporation_corporation_id_mining_extractions: #{e}"
end
```

#### Using the get_corporation_corporation_id_mining_extractions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationCorporationIdMiningExtractionsGetInner>>, Integer, Hash)> get_corporation_corporation_id_mining_extractions_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Moon extraction timers
  data, status_code, headers = api_instance.get_corporation_corporation_id_mining_extractions_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationCorporationIdMiningExtractionsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling IndustryApi->get_corporation_corporation_id_mining_extractions_with_http_info: #{e}"
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

[**Array&lt;CorporationCorporationIdMiningExtractionsGetInner&gt;**](CorporationCorporationIdMiningExtractionsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporation_corporation_id_mining_observers

> <Array<CorporationCorporationIdMiningObserversGetInner>> get_corporation_corporation_id_mining_observers(corporation_id, x_compatibility_date, opts)

Corporation mining observers

Paginated list of all entities capable of observing and recording mining for a corporation

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::IndustryApi.new
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
  # Corporation mining observers
  result = api_instance.get_corporation_corporation_id_mining_observers(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling IndustryApi->get_corporation_corporation_id_mining_observers: #{e}"
end
```

#### Using the get_corporation_corporation_id_mining_observers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationCorporationIdMiningObserversGetInner>>, Integer, Hash)> get_corporation_corporation_id_mining_observers_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Corporation mining observers
  data, status_code, headers = api_instance.get_corporation_corporation_id_mining_observers_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationCorporationIdMiningObserversGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling IndustryApi->get_corporation_corporation_id_mining_observers_with_http_info: #{e}"
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

[**Array&lt;CorporationCorporationIdMiningObserversGetInner&gt;**](CorporationCorporationIdMiningObserversGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporation_corporation_id_mining_observers_observer_id

> <Array<CorporationCorporationIdMiningObserversObserverIdGetInner>> get_corporation_corporation_id_mining_observers_observer_id(corporation_id, observer_id, x_compatibility_date, opts)

Observed corporation mining

Paginated record of all mining seen by an observer

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::IndustryApi.new
corporation_id = 789 # Integer | The ID of the corporation
observer_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  page: 56, # Integer | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Observed corporation mining
  result = api_instance.get_corporation_corporation_id_mining_observers_observer_id(corporation_id, observer_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling IndustryApi->get_corporation_corporation_id_mining_observers_observer_id: #{e}"
end
```

#### Using the get_corporation_corporation_id_mining_observers_observer_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationCorporationIdMiningObserversObserverIdGetInner>>, Integer, Hash)> get_corporation_corporation_id_mining_observers_observer_id_with_http_info(corporation_id, observer_id, x_compatibility_date, opts)

```ruby
begin
  # Observed corporation mining
  data, status_code, headers = api_instance.get_corporation_corporation_id_mining_observers_observer_id_with_http_info(corporation_id, observer_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationCorporationIdMiningObserversObserverIdGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling IndustryApi->get_corporation_corporation_id_mining_observers_observer_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | The ID of the corporation |  |
| **observer_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **page** | **Integer** |  | [optional] |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;CorporationCorporationIdMiningObserversObserverIdGetInner&gt;**](CorporationCorporationIdMiningObserversObserverIdGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_industry_jobs

> <Array<CorporationsCorporationIdIndustryJobsGetInner>> get_corporations_corporation_id_industry_jobs(corporation_id, x_compatibility_date, opts)

List corporation industry jobs

List industry jobs run by a corporation

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::IndustryApi.new
corporation_id = 789 # Integer | The ID of the corporation
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  include_completed: true, # Boolean | 
  page: 56, # Integer | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # List corporation industry jobs
  result = api_instance.get_corporations_corporation_id_industry_jobs(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling IndustryApi->get_corporations_corporation_id_industry_jobs: #{e}"
end
```

#### Using the get_corporations_corporation_id_industry_jobs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdIndustryJobsGetInner>>, Integer, Hash)> get_corporations_corporation_id_industry_jobs_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # List corporation industry jobs
  data, status_code, headers = api_instance.get_corporations_corporation_id_industry_jobs_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdIndustryJobsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling IndustryApi->get_corporations_corporation_id_industry_jobs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | The ID of the corporation |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **include_completed** | **Boolean** |  | [optional][default to false] |
| **page** | **Integer** |  | [optional] |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;CorporationsCorporationIdIndustryJobsGetInner&gt;**](CorporationsCorporationIdIndustryJobsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_industry_facilities

> <Array<IndustryFacilitiesGetInner>> get_industry_facilities(x_compatibility_date, opts)

List industry facilities

Return a list of industry facilities

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::IndustryApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # List industry facilities
  result = api_instance.get_industry_facilities(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling IndustryApi->get_industry_facilities: #{e}"
end
```

#### Using the get_industry_facilities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<IndustryFacilitiesGetInner>>, Integer, Hash)> get_industry_facilities_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # List industry facilities
  data, status_code, headers = api_instance.get_industry_facilities_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<IndustryFacilitiesGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling IndustryApi->get_industry_facilities_with_http_info: #{e}"
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

[**Array&lt;IndustryFacilitiesGetInner&gt;**](IndustryFacilitiesGetInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_industry_systems

> <Array<IndustrySystemsGetInner>> get_industry_systems(x_compatibility_date, opts)

List solar system cost indices

Return cost indices for solar systems

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::IndustryApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # List solar system cost indices
  result = api_instance.get_industry_systems(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling IndustryApi->get_industry_systems: #{e}"
end
```

#### Using the get_industry_systems_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<IndustrySystemsGetInner>>, Integer, Hash)> get_industry_systems_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # List solar system cost indices
  data, status_code, headers = api_instance.get_industry_systems_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<IndustrySystemsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling IndustryApi->get_industry_systems_with_http_info: #{e}"
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

[**Array&lt;IndustrySystemsGetInner&gt;**](IndustrySystemsGetInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

