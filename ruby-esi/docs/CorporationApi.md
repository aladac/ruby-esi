# ESI::CorporationApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_corporations_corporation_id**](CorporationApi.md#get_corporations_corporation_id) | **GET** /corporations/{corporation_id} | Get corporation information |
| [**get_corporations_corporation_id_alliancehistory**](CorporationApi.md#get_corporations_corporation_id_alliancehistory) | **GET** /corporations/{corporation_id}/alliancehistory | Get alliance history |
| [**get_corporations_corporation_id_blueprints**](CorporationApi.md#get_corporations_corporation_id_blueprints) | **GET** /corporations/{corporation_id}/blueprints | Get corporation blueprints |
| [**get_corporations_corporation_id_containers_logs**](CorporationApi.md#get_corporations_corporation_id_containers_logs) | **GET** /corporations/{corporation_id}/containers/logs | Get all corporation ALSC logs |
| [**get_corporations_corporation_id_divisions**](CorporationApi.md#get_corporations_corporation_id_divisions) | **GET** /corporations/{corporation_id}/divisions | Get corporation divisions |
| [**get_corporations_corporation_id_facilities**](CorporationApi.md#get_corporations_corporation_id_facilities) | **GET** /corporations/{corporation_id}/facilities | Get corporation facilities |
| [**get_corporations_corporation_id_icons**](CorporationApi.md#get_corporations_corporation_id_icons) | **GET** /corporations/{corporation_id}/icons | Get corporation icon |
| [**get_corporations_corporation_id_medals**](CorporationApi.md#get_corporations_corporation_id_medals) | **GET** /corporations/{corporation_id}/medals | Get corporation medals |
| [**get_corporations_corporation_id_medals_issued**](CorporationApi.md#get_corporations_corporation_id_medals_issued) | **GET** /corporations/{corporation_id}/medals/issued | Get corporation issued medals |
| [**get_corporations_corporation_id_members**](CorporationApi.md#get_corporations_corporation_id_members) | **GET** /corporations/{corporation_id}/members | Get corporation members |
| [**get_corporations_corporation_id_members_limit**](CorporationApi.md#get_corporations_corporation_id_members_limit) | **GET** /corporations/{corporation_id}/members/limit | Get corporation member limit |
| [**get_corporations_corporation_id_members_titles**](CorporationApi.md#get_corporations_corporation_id_members_titles) | **GET** /corporations/{corporation_id}/members/titles | Get corporation&#39;s members&#39; titles |
| [**get_corporations_corporation_id_membertracking**](CorporationApi.md#get_corporations_corporation_id_membertracking) | **GET** /corporations/{corporation_id}/membertracking | Track corporation members |
| [**get_corporations_corporation_id_roles**](CorporationApi.md#get_corporations_corporation_id_roles) | **GET** /corporations/{corporation_id}/roles | Get corporation member roles |
| [**get_corporations_corporation_id_roles_history**](CorporationApi.md#get_corporations_corporation_id_roles_history) | **GET** /corporations/{corporation_id}/roles/history | Get corporation member roles history |
| [**get_corporations_corporation_id_shareholders**](CorporationApi.md#get_corporations_corporation_id_shareholders) | **GET** /corporations/{corporation_id}/shareholders | Get corporation shareholders |
| [**get_corporations_corporation_id_standings**](CorporationApi.md#get_corporations_corporation_id_standings) | **GET** /corporations/{corporation_id}/standings | Get corporation standings |
| [**get_corporations_corporation_id_starbases**](CorporationApi.md#get_corporations_corporation_id_starbases) | **GET** /corporations/{corporation_id}/starbases | Get corporation starbases (POSes) |
| [**get_corporations_corporation_id_starbases_starbase_id**](CorporationApi.md#get_corporations_corporation_id_starbases_starbase_id) | **GET** /corporations/{corporation_id}/starbases/{starbase_id} | Get starbase (POS) detail |
| [**get_corporations_corporation_id_structures**](CorporationApi.md#get_corporations_corporation_id_structures) | **GET** /corporations/{corporation_id}/structures | Get corporation structures |
| [**get_corporations_corporation_id_titles**](CorporationApi.md#get_corporations_corporation_id_titles) | **GET** /corporations/{corporation_id}/titles | Get corporation titles |
| [**get_corporations_npccorps**](CorporationApi.md#get_corporations_npccorps) | **GET** /corporations/npccorps | Get npc corporations |


## get_corporations_corporation_id

> <CorporationsCorporationIdGet> get_corporations_corporation_id(corporation_id, x_compatibility_date, opts)

Get corporation information

Public information about a corporation

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::CorporationApi.new
corporation_id = 789 # Integer | The ID of the corporation
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get corporation information
  result = api_instance.get_corporations_corporation_id(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id: #{e}"
end
```

#### Using the get_corporations_corporation_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CorporationsCorporationIdGet>, Integer, Hash)> get_corporations_corporation_id_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get corporation information
  data, status_code, headers = api_instance.get_corporations_corporation_id_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CorporationsCorporationIdGet>
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_with_http_info: #{e}"
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

[**CorporationsCorporationIdGet**](CorporationsCorporationIdGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_alliancehistory

> <Array<CorporationsCorporationIdAlliancehistoryGetInner>> get_corporations_corporation_id_alliancehistory(corporation_id, x_compatibility_date, opts)

Get alliance history

Get a list of all the alliances a corporation has been a member of

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::CorporationApi.new
corporation_id = 789 # Integer | The ID of the corporation
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get alliance history
  result = api_instance.get_corporations_corporation_id_alliancehistory(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_alliancehistory: #{e}"
end
```

#### Using the get_corporations_corporation_id_alliancehistory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdAlliancehistoryGetInner>>, Integer, Hash)> get_corporations_corporation_id_alliancehistory_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get alliance history
  data, status_code, headers = api_instance.get_corporations_corporation_id_alliancehistory_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdAlliancehistoryGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_alliancehistory_with_http_info: #{e}"
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

[**Array&lt;CorporationsCorporationIdAlliancehistoryGetInner&gt;**](CorporationsCorporationIdAlliancehistoryGetInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_blueprints

> <Array<CorporationsCorporationIdBlueprintsGetInner>> get_corporations_corporation_id_blueprints(corporation_id, x_compatibility_date, opts)

Get corporation blueprints

Returns a list of blueprints the corporation owns

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::CorporationApi.new
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
  # Get corporation blueprints
  result = api_instance.get_corporations_corporation_id_blueprints(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_blueprints: #{e}"
end
```

#### Using the get_corporations_corporation_id_blueprints_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdBlueprintsGetInner>>, Integer, Hash)> get_corporations_corporation_id_blueprints_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get corporation blueprints
  data, status_code, headers = api_instance.get_corporations_corporation_id_blueprints_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdBlueprintsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_blueprints_with_http_info: #{e}"
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

[**Array&lt;CorporationsCorporationIdBlueprintsGetInner&gt;**](CorporationsCorporationIdBlueprintsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_containers_logs

> <Array<CorporationsCorporationIdContainersLogsGetInner>> get_corporations_corporation_id_containers_logs(corporation_id, x_compatibility_date, opts)

Get all corporation ALSC logs

Returns logs recorded in the past seven days from all audit log secure containers (ALSC) owned by a given corporation

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::CorporationApi.new
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
  # Get all corporation ALSC logs
  result = api_instance.get_corporations_corporation_id_containers_logs(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_containers_logs: #{e}"
end
```

#### Using the get_corporations_corporation_id_containers_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdContainersLogsGetInner>>, Integer, Hash)> get_corporations_corporation_id_containers_logs_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get all corporation ALSC logs
  data, status_code, headers = api_instance.get_corporations_corporation_id_containers_logs_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdContainersLogsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_containers_logs_with_http_info: #{e}"
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

[**Array&lt;CorporationsCorporationIdContainersLogsGetInner&gt;**](CorporationsCorporationIdContainersLogsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_divisions

> <CorporationsCorporationIdDivisionsGet> get_corporations_corporation_id_divisions(corporation_id, x_compatibility_date, opts)

Get corporation divisions

Return corporation hangar and wallet division names, only show if a division is not using the default name

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::CorporationApi.new
corporation_id = 789 # Integer | The ID of the corporation
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get corporation divisions
  result = api_instance.get_corporations_corporation_id_divisions(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_divisions: #{e}"
end
```

#### Using the get_corporations_corporation_id_divisions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CorporationsCorporationIdDivisionsGet>, Integer, Hash)> get_corporations_corporation_id_divisions_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get corporation divisions
  data, status_code, headers = api_instance.get_corporations_corporation_id_divisions_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CorporationsCorporationIdDivisionsGet>
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_divisions_with_http_info: #{e}"
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

[**CorporationsCorporationIdDivisionsGet**](CorporationsCorporationIdDivisionsGet.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_facilities

> <Array<CorporationsCorporationIdFacilitiesGetInner>> get_corporations_corporation_id_facilities(corporation_id, x_compatibility_date, opts)

Get corporation facilities

Return a corporation's facilities

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::CorporationApi.new
corporation_id = 789 # Integer | The ID of the corporation
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get corporation facilities
  result = api_instance.get_corporations_corporation_id_facilities(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_facilities: #{e}"
end
```

#### Using the get_corporations_corporation_id_facilities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdFacilitiesGetInner>>, Integer, Hash)> get_corporations_corporation_id_facilities_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get corporation facilities
  data, status_code, headers = api_instance.get_corporations_corporation_id_facilities_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdFacilitiesGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_facilities_with_http_info: #{e}"
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

[**Array&lt;CorporationsCorporationIdFacilitiesGetInner&gt;**](CorporationsCorporationIdFacilitiesGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_icons

> <CorporationsCorporationIdIconsGet> get_corporations_corporation_id_icons(corporation_id, x_compatibility_date, opts)

Get corporation icon

Get the icon urls for a corporation

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::CorporationApi.new
corporation_id = 789 # Integer | The ID of the corporation
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get corporation icon
  result = api_instance.get_corporations_corporation_id_icons(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_icons: #{e}"
end
```

#### Using the get_corporations_corporation_id_icons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CorporationsCorporationIdIconsGet>, Integer, Hash)> get_corporations_corporation_id_icons_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get corporation icon
  data, status_code, headers = api_instance.get_corporations_corporation_id_icons_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CorporationsCorporationIdIconsGet>
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_icons_with_http_info: #{e}"
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

[**CorporationsCorporationIdIconsGet**](CorporationsCorporationIdIconsGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_medals

> <Array<CorporationsCorporationIdMedalsGetInner>> get_corporations_corporation_id_medals(corporation_id, x_compatibility_date, opts)

Get corporation medals

Returns a corporation's medals

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::CorporationApi.new
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
  # Get corporation medals
  result = api_instance.get_corporations_corporation_id_medals(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_medals: #{e}"
end
```

#### Using the get_corporations_corporation_id_medals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdMedalsGetInner>>, Integer, Hash)> get_corporations_corporation_id_medals_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get corporation medals
  data, status_code, headers = api_instance.get_corporations_corporation_id_medals_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdMedalsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_medals_with_http_info: #{e}"
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

[**Array&lt;CorporationsCorporationIdMedalsGetInner&gt;**](CorporationsCorporationIdMedalsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_medals_issued

> <Array<CorporationsCorporationIdMedalsIssuedGetInner>> get_corporations_corporation_id_medals_issued(corporation_id, x_compatibility_date, opts)

Get corporation issued medals

Returns medals issued by a corporation

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::CorporationApi.new
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
  # Get corporation issued medals
  result = api_instance.get_corporations_corporation_id_medals_issued(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_medals_issued: #{e}"
end
```

#### Using the get_corporations_corporation_id_medals_issued_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdMedalsIssuedGetInner>>, Integer, Hash)> get_corporations_corporation_id_medals_issued_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get corporation issued medals
  data, status_code, headers = api_instance.get_corporations_corporation_id_medals_issued_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdMedalsIssuedGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_medals_issued_with_http_info: #{e}"
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

[**Array&lt;CorporationsCorporationIdMedalsIssuedGetInner&gt;**](CorporationsCorporationIdMedalsIssuedGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_members

> Array&lt;Integer&gt; get_corporations_corporation_id_members(corporation_id, x_compatibility_date, opts)

Get corporation members

Return the current member list of a corporation, the token's character need to be a member of the corporation.

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::CorporationApi.new
corporation_id = 789 # Integer | The ID of the corporation
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get corporation members
  result = api_instance.get_corporations_corporation_id_members(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_members: #{e}"
end
```

#### Using the get_corporations_corporation_id_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_corporations_corporation_id_members_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get corporation members
  data, status_code, headers = api_instance.get_corporations_corporation_id_members_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_members_with_http_info: #{e}"
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

**Array&lt;Integer&gt;**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_members_limit

> Integer get_corporations_corporation_id_members_limit(corporation_id, x_compatibility_date, opts)

Get corporation member limit

Return a corporation's member limit, not including CEO himself

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::CorporationApi.new
corporation_id = 789 # Integer | The ID of the corporation
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get corporation member limit
  result = api_instance.get_corporations_corporation_id_members_limit(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_members_limit: #{e}"
end
```

#### Using the get_corporations_corporation_id_members_limit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> get_corporations_corporation_id_members_limit_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get corporation member limit
  data, status_code, headers = api_instance.get_corporations_corporation_id_members_limit_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_members_limit_with_http_info: #{e}"
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

**Integer**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_members_titles

> <Array<CorporationsCorporationIdMembersTitlesGetInner>> get_corporations_corporation_id_members_titles(corporation_id, x_compatibility_date, opts)

Get corporation's members' titles

Returns a corporation's members' titles

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::CorporationApi.new
corporation_id = 789 # Integer | The ID of the corporation
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get corporation's members' titles
  result = api_instance.get_corporations_corporation_id_members_titles(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_members_titles: #{e}"
end
```

#### Using the get_corporations_corporation_id_members_titles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdMembersTitlesGetInner>>, Integer, Hash)> get_corporations_corporation_id_members_titles_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get corporation's members' titles
  data, status_code, headers = api_instance.get_corporations_corporation_id_members_titles_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdMembersTitlesGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_members_titles_with_http_info: #{e}"
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

[**Array&lt;CorporationsCorporationIdMembersTitlesGetInner&gt;**](CorporationsCorporationIdMembersTitlesGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_membertracking

> <Array<CorporationsCorporationIdMembertrackingGetInner>> get_corporations_corporation_id_membertracking(corporation_id, x_compatibility_date, opts)

Track corporation members

Returns additional information about a corporation's members which helps tracking their activities

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::CorporationApi.new
corporation_id = 789 # Integer | The ID of the corporation
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Track corporation members
  result = api_instance.get_corporations_corporation_id_membertracking(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_membertracking: #{e}"
end
```

#### Using the get_corporations_corporation_id_membertracking_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdMembertrackingGetInner>>, Integer, Hash)> get_corporations_corporation_id_membertracking_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Track corporation members
  data, status_code, headers = api_instance.get_corporations_corporation_id_membertracking_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdMembertrackingGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_membertracking_with_http_info: #{e}"
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

[**Array&lt;CorporationsCorporationIdMembertrackingGetInner&gt;**](CorporationsCorporationIdMembertrackingGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_roles

> <Array<CorporationsCorporationIdRolesGetInner>> get_corporations_corporation_id_roles(corporation_id, x_compatibility_date, opts)

Get corporation member roles

Return the roles of all members if the character has the personnel manager role or any grantable role.

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::CorporationApi.new
corporation_id = 789 # Integer | The ID of the corporation
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get corporation member roles
  result = api_instance.get_corporations_corporation_id_roles(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_roles: #{e}"
end
```

#### Using the get_corporations_corporation_id_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdRolesGetInner>>, Integer, Hash)> get_corporations_corporation_id_roles_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get corporation member roles
  data, status_code, headers = api_instance.get_corporations_corporation_id_roles_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdRolesGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_roles_with_http_info: #{e}"
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

[**Array&lt;CorporationsCorporationIdRolesGetInner&gt;**](CorporationsCorporationIdRolesGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_roles_history

> <Array<CorporationsCorporationIdRolesHistoryGetInner>> get_corporations_corporation_id_roles_history(corporation_id, x_compatibility_date, opts)

Get corporation member roles history

Return how roles have changed for a coporation's members, up to a month

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::CorporationApi.new
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
  # Get corporation member roles history
  result = api_instance.get_corporations_corporation_id_roles_history(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_roles_history: #{e}"
end
```

#### Using the get_corporations_corporation_id_roles_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdRolesHistoryGetInner>>, Integer, Hash)> get_corporations_corporation_id_roles_history_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get corporation member roles history
  data, status_code, headers = api_instance.get_corporations_corporation_id_roles_history_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdRolesHistoryGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_roles_history_with_http_info: #{e}"
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

[**Array&lt;CorporationsCorporationIdRolesHistoryGetInner&gt;**](CorporationsCorporationIdRolesHistoryGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_shareholders

> <Array<CorporationsCorporationIdShareholdersGetInner>> get_corporations_corporation_id_shareholders(corporation_id, x_compatibility_date, opts)

Get corporation shareholders

Return the current shareholders of a corporation.

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::CorporationApi.new
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
  # Get corporation shareholders
  result = api_instance.get_corporations_corporation_id_shareholders(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_shareholders: #{e}"
end
```

#### Using the get_corporations_corporation_id_shareholders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdShareholdersGetInner>>, Integer, Hash)> get_corporations_corporation_id_shareholders_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get corporation shareholders
  data, status_code, headers = api_instance.get_corporations_corporation_id_shareholders_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdShareholdersGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_shareholders_with_http_info: #{e}"
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

[**Array&lt;CorporationsCorporationIdShareholdersGetInner&gt;**](CorporationsCorporationIdShareholdersGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_standings

> <Array<CharactersCharacterIdStandingsGetInner>> get_corporations_corporation_id_standings(corporation_id, x_compatibility_date, opts)

Get corporation standings

Return corporation standings from agents, NPC corporations, and factions

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::CorporationApi.new
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
  # Get corporation standings
  result = api_instance.get_corporations_corporation_id_standings(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_standings: #{e}"
end
```

#### Using the get_corporations_corporation_id_standings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdStandingsGetInner>>, Integer, Hash)> get_corporations_corporation_id_standings_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get corporation standings
  data, status_code, headers = api_instance.get_corporations_corporation_id_standings_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdStandingsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_standings_with_http_info: #{e}"
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

[**Array&lt;CharactersCharacterIdStandingsGetInner&gt;**](CharactersCharacterIdStandingsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_starbases

> <Array<CorporationsCorporationIdStarbasesGetInner>> get_corporations_corporation_id_starbases(corporation_id, x_compatibility_date, opts)

Get corporation starbases (POSes)

Returns list of corporation starbases (POSes)

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::CorporationApi.new
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
  # Get corporation starbases (POSes)
  result = api_instance.get_corporations_corporation_id_starbases(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_starbases: #{e}"
end
```

#### Using the get_corporations_corporation_id_starbases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdStarbasesGetInner>>, Integer, Hash)> get_corporations_corporation_id_starbases_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get corporation starbases (POSes)
  data, status_code, headers = api_instance.get_corporations_corporation_id_starbases_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdStarbasesGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_starbases_with_http_info: #{e}"
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

[**Array&lt;CorporationsCorporationIdStarbasesGetInner&gt;**](CorporationsCorporationIdStarbasesGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_starbases_starbase_id

> <CorporationsCorporationIdStarbasesStarbaseIdGet> get_corporations_corporation_id_starbases_starbase_id(corporation_id, starbase_id, system_id, x_compatibility_date, opts)

Get starbase (POS) detail

Returns various settings and fuels of a starbase (POS)

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::CorporationApi.new
corporation_id = 789 # Integer | The ID of the corporation
starbase_id = 789 # Integer | 
system_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get starbase (POS) detail
  result = api_instance.get_corporations_corporation_id_starbases_starbase_id(corporation_id, starbase_id, system_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_starbases_starbase_id: #{e}"
end
```

#### Using the get_corporations_corporation_id_starbases_starbase_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CorporationsCorporationIdStarbasesStarbaseIdGet>, Integer, Hash)> get_corporations_corporation_id_starbases_starbase_id_with_http_info(corporation_id, starbase_id, system_id, x_compatibility_date, opts)

```ruby
begin
  # Get starbase (POS) detail
  data, status_code, headers = api_instance.get_corporations_corporation_id_starbases_starbase_id_with_http_info(corporation_id, starbase_id, system_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CorporationsCorporationIdStarbasesStarbaseIdGet>
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_starbases_starbase_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | The ID of the corporation |  |
| **starbase_id** | **Integer** |  |  |
| **system_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**CorporationsCorporationIdStarbasesStarbaseIdGet**](CorporationsCorporationIdStarbasesStarbaseIdGet.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_structures

> <Array<CorporationsCorporationIdStructuresGetInner>> get_corporations_corporation_id_structures(corporation_id, x_compatibility_date, opts)

Get corporation structures

Get a list of corporation structures. This route's version includes the changes to structures detailed in this blog: https://www.eveonline.com/article/upwell-2.0-structures-changes-coming-on-february-13th

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::CorporationApi.new
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
  # Get corporation structures
  result = api_instance.get_corporations_corporation_id_structures(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_structures: #{e}"
end
```

#### Using the get_corporations_corporation_id_structures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdStructuresGetInner>>, Integer, Hash)> get_corporations_corporation_id_structures_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get corporation structures
  data, status_code, headers = api_instance.get_corporations_corporation_id_structures_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdStructuresGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_structures_with_http_info: #{e}"
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

[**Array&lt;CorporationsCorporationIdStructuresGetInner&gt;**](CorporationsCorporationIdStructuresGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_titles

> <Array<CorporationsCorporationIdTitlesGetInner>> get_corporations_corporation_id_titles(corporation_id, x_compatibility_date, opts)

Get corporation titles

Returns a corporation's titles

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::CorporationApi.new
corporation_id = 789 # Integer | The ID of the corporation
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get corporation titles
  result = api_instance.get_corporations_corporation_id_titles(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_titles: #{e}"
end
```

#### Using the get_corporations_corporation_id_titles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdTitlesGetInner>>, Integer, Hash)> get_corporations_corporation_id_titles_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get corporation titles
  data, status_code, headers = api_instance.get_corporations_corporation_id_titles_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdTitlesGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_titles_with_http_info: #{e}"
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

[**Array&lt;CorporationsCorporationIdTitlesGetInner&gt;**](CorporationsCorporationIdTitlesGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_npccorps

> Array&lt;Integer&gt; get_corporations_npccorps(x_compatibility_date, opts)

Get npc corporations

Get a list of npc corporations  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::CorporationApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get npc corporations
  result = api_instance.get_corporations_npccorps(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_npccorps: #{e}"
end
```

#### Using the get_corporations_npccorps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_corporations_npccorps_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # Get npc corporations
  data, status_code, headers = api_instance.get_corporations_npccorps_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue ESI::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_npccorps_with_http_info: #{e}"
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

