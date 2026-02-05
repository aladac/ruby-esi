# ESI::FleetsApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_fleets_fleet_id_members_member_id**](FleetsApi.md#delete_fleets_fleet_id_members_member_id) | **DELETE** /fleets/{fleet_id}/members/{member_id} | Kick fleet member |
| [**delete_fleets_fleet_id_squads_squad_id**](FleetsApi.md#delete_fleets_fleet_id_squads_squad_id) | **DELETE** /fleets/{fleet_id}/squads/{squad_id} | Delete fleet squad |
| [**delete_fleets_fleet_id_wings_wing_id**](FleetsApi.md#delete_fleets_fleet_id_wings_wing_id) | **DELETE** /fleets/{fleet_id}/wings/{wing_id} | Delete fleet wing |
| [**get_characters_character_id_fleet**](FleetsApi.md#get_characters_character_id_fleet) | **GET** /characters/{character_id}/fleet | Get character fleet info |
| [**get_fleets_fleet_id**](FleetsApi.md#get_fleets_fleet_id) | **GET** /fleets/{fleet_id} | Get fleet information |
| [**get_fleets_fleet_id_members**](FleetsApi.md#get_fleets_fleet_id_members) | **GET** /fleets/{fleet_id}/members | Get fleet members |
| [**get_fleets_fleet_id_wings**](FleetsApi.md#get_fleets_fleet_id_wings) | **GET** /fleets/{fleet_id}/wings | Get fleet wings |
| [**post_fleets_fleet_id_members**](FleetsApi.md#post_fleets_fleet_id_members) | **POST** /fleets/{fleet_id}/members | Create fleet invitation |
| [**post_fleets_fleet_id_wings**](FleetsApi.md#post_fleets_fleet_id_wings) | **POST** /fleets/{fleet_id}/wings | Create fleet wing |
| [**post_fleets_fleet_id_wings_wing_id_squads**](FleetsApi.md#post_fleets_fleet_id_wings_wing_id_squads) | **POST** /fleets/{fleet_id}/wings/{wing_id}/squads | Create fleet squad |
| [**put_fleets_fleet_id**](FleetsApi.md#put_fleets_fleet_id) | **PUT** /fleets/{fleet_id} | Update fleet |
| [**put_fleets_fleet_id_members_member_id**](FleetsApi.md#put_fleets_fleet_id_members_member_id) | **PUT** /fleets/{fleet_id}/members/{member_id} | Move fleet member |
| [**put_fleets_fleet_id_squads_squad_id**](FleetsApi.md#put_fleets_fleet_id_squads_squad_id) | **PUT** /fleets/{fleet_id}/squads/{squad_id} | Rename fleet squad |
| [**put_fleets_fleet_id_wings_wing_id**](FleetsApi.md#put_fleets_fleet_id_wings_wing_id) | **PUT** /fleets/{fleet_id}/wings/{wing_id} | Rename fleet wing |


## delete_fleets_fleet_id_members_member_id

> delete_fleets_fleet_id_members_member_id(fleet_id, member_id, x_compatibility_date, opts)

Kick fleet member

Kick a fleet member

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::FleetsApi.new
fleet_id = 789 # Integer | 
member_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Kick fleet member
  api_instance.delete_fleets_fleet_id_members_member_id(fleet_id, member_id, x_compatibility_date, opts)
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->delete_fleets_fleet_id_members_member_id: #{e}"
end
```

#### Using the delete_fleets_fleet_id_members_member_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_fleets_fleet_id_members_member_id_with_http_info(fleet_id, member_id, x_compatibility_date, opts)

```ruby
begin
  # Kick fleet member
  data, status_code, headers = api_instance.delete_fleets_fleet_id_members_member_id_with_http_info(fleet_id, member_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->delete_fleets_fleet_id_members_member_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** |  |  |
| **member_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_fleets_fleet_id_squads_squad_id

> delete_fleets_fleet_id_squads_squad_id(fleet_id, squad_id, x_compatibility_date, opts)

Delete fleet squad

Delete a fleet squad, only empty squads can be deleted

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::FleetsApi.new
fleet_id = 789 # Integer | 
squad_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Delete fleet squad
  api_instance.delete_fleets_fleet_id_squads_squad_id(fleet_id, squad_id, x_compatibility_date, opts)
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->delete_fleets_fleet_id_squads_squad_id: #{e}"
end
```

#### Using the delete_fleets_fleet_id_squads_squad_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_fleets_fleet_id_squads_squad_id_with_http_info(fleet_id, squad_id, x_compatibility_date, opts)

```ruby
begin
  # Delete fleet squad
  data, status_code, headers = api_instance.delete_fleets_fleet_id_squads_squad_id_with_http_info(fleet_id, squad_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->delete_fleets_fleet_id_squads_squad_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** |  |  |
| **squad_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_fleets_fleet_id_wings_wing_id

> delete_fleets_fleet_id_wings_wing_id(fleet_id, wing_id, x_compatibility_date, opts)

Delete fleet wing

Delete a fleet wing, only empty wings can be deleted. The wing may contain squads, but the squads must be empty

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::FleetsApi.new
fleet_id = 789 # Integer | 
wing_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Delete fleet wing
  api_instance.delete_fleets_fleet_id_wings_wing_id(fleet_id, wing_id, x_compatibility_date, opts)
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->delete_fleets_fleet_id_wings_wing_id: #{e}"
end
```

#### Using the delete_fleets_fleet_id_wings_wing_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_fleets_fleet_id_wings_wing_id_with_http_info(fleet_id, wing_id, x_compatibility_date, opts)

```ruby
begin
  # Delete fleet wing
  data, status_code, headers = api_instance.delete_fleets_fleet_id_wings_wing_id_with_http_info(fleet_id, wing_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->delete_fleets_fleet_id_wings_wing_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** |  |  |
| **wing_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_fleet

> <CharactersCharacterIdFleetGet> get_characters_character_id_fleet(character_id, x_compatibility_date, opts)

Get character fleet info

Return the fleet ID the character is in, if any.

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::FleetsApi.new
character_id = 789 # Integer | The ID of the character
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get character fleet info
  result = api_instance.get_characters_character_id_fleet(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->get_characters_character_id_fleet: #{e}"
end
```

#### Using the get_characters_character_id_fleet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CharactersCharacterIdFleetGet>, Integer, Hash)> get_characters_character_id_fleet_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # Get character fleet info
  data, status_code, headers = api_instance.get_characters_character_id_fleet_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CharactersCharacterIdFleetGet>
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->get_characters_character_id_fleet_with_http_info: #{e}"
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

[**CharactersCharacterIdFleetGet**](CharactersCharacterIdFleetGet.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fleets_fleet_id

> <FleetsFleetIdGet> get_fleets_fleet_id(fleet_id, x_compatibility_date, opts)

Get fleet information

Return details about a fleet

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::FleetsApi.new
fleet_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get fleet information
  result = api_instance.get_fleets_fleet_id(fleet_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->get_fleets_fleet_id: #{e}"
end
```

#### Using the get_fleets_fleet_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FleetsFleetIdGet>, Integer, Hash)> get_fleets_fleet_id_with_http_info(fleet_id, x_compatibility_date, opts)

```ruby
begin
  # Get fleet information
  data, status_code, headers = api_instance.get_fleets_fleet_id_with_http_info(fleet_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FleetsFleetIdGet>
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->get_fleets_fleet_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**FleetsFleetIdGet**](FleetsFleetIdGet.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fleets_fleet_id_members

> <Array<FleetsFleetIdMembersGetInner>> get_fleets_fleet_id_members(fleet_id, x_compatibility_date, opts)

Get fleet members

Return information about fleet members

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::FleetsApi.new
fleet_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get fleet members
  result = api_instance.get_fleets_fleet_id_members(fleet_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->get_fleets_fleet_id_members: #{e}"
end
```

#### Using the get_fleets_fleet_id_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<FleetsFleetIdMembersGetInner>>, Integer, Hash)> get_fleets_fleet_id_members_with_http_info(fleet_id, x_compatibility_date, opts)

```ruby
begin
  # Get fleet members
  data, status_code, headers = api_instance.get_fleets_fleet_id_members_with_http_info(fleet_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<FleetsFleetIdMembersGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->get_fleets_fleet_id_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;FleetsFleetIdMembersGetInner&gt;**](FleetsFleetIdMembersGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fleets_fleet_id_wings

> <Array<FleetsFleetIdWingsGetInner>> get_fleets_fleet_id_wings(fleet_id, x_compatibility_date, opts)

Get fleet wings

Return information about wings in a fleet

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::FleetsApi.new
fleet_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get fleet wings
  result = api_instance.get_fleets_fleet_id_wings(fleet_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->get_fleets_fleet_id_wings: #{e}"
end
```

#### Using the get_fleets_fleet_id_wings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<FleetsFleetIdWingsGetInner>>, Integer, Hash)> get_fleets_fleet_id_wings_with_http_info(fleet_id, x_compatibility_date, opts)

```ruby
begin
  # Get fleet wings
  data, status_code, headers = api_instance.get_fleets_fleet_id_wings_with_http_info(fleet_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<FleetsFleetIdWingsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->get_fleets_fleet_id_wings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;FleetsFleetIdWingsGetInner&gt;**](FleetsFleetIdWingsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_fleets_fleet_id_members

> post_fleets_fleet_id_members(fleet_id, x_compatibility_date, post_fleets_fleet_id_members_request, opts)

Create fleet invitation

Invite a character into the fleet. If a character has a CSPA charge set it is not possible to invite them to the fleet using ESI

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::FleetsApi.new
fleet_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
post_fleets_fleet_id_members_request = ESI::PostFleetsFleetIdMembersRequest.new({character_id: 3.56, role: 'fleet_commander'}) # PostFleetsFleetIdMembersRequest | 
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Create fleet invitation
  api_instance.post_fleets_fleet_id_members(fleet_id, x_compatibility_date, post_fleets_fleet_id_members_request, opts)
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->post_fleets_fleet_id_members: #{e}"
end
```

#### Using the post_fleets_fleet_id_members_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_fleets_fleet_id_members_with_http_info(fleet_id, x_compatibility_date, post_fleets_fleet_id_members_request, opts)

```ruby
begin
  # Create fleet invitation
  data, status_code, headers = api_instance.post_fleets_fleet_id_members_with_http_info(fleet_id, x_compatibility_date, post_fleets_fleet_id_members_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->post_fleets_fleet_id_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **post_fleets_fleet_id_members_request** | [**PostFleetsFleetIdMembersRequest**](PostFleetsFleetIdMembersRequest.md) |  |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_fleets_fleet_id_wings

> <FleetsFleetIdWingsPost> post_fleets_fleet_id_wings(fleet_id, x_compatibility_date, opts)

Create fleet wing

Create a new wing in a fleet

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::FleetsApi.new
fleet_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Create fleet wing
  result = api_instance.post_fleets_fleet_id_wings(fleet_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->post_fleets_fleet_id_wings: #{e}"
end
```

#### Using the post_fleets_fleet_id_wings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FleetsFleetIdWingsPost>, Integer, Hash)> post_fleets_fleet_id_wings_with_http_info(fleet_id, x_compatibility_date, opts)

```ruby
begin
  # Create fleet wing
  data, status_code, headers = api_instance.post_fleets_fleet_id_wings_with_http_info(fleet_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FleetsFleetIdWingsPost>
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->post_fleets_fleet_id_wings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**FleetsFleetIdWingsPost**](FleetsFleetIdWingsPost.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_fleets_fleet_id_wings_wing_id_squads

> <FleetsFleetIdWingsWingIdSquadsPost> post_fleets_fleet_id_wings_wing_id_squads(fleet_id, wing_id, x_compatibility_date, opts)

Create fleet squad

Create a new squad in a fleet

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::FleetsApi.new
fleet_id = 789 # Integer | 
wing_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Create fleet squad
  result = api_instance.post_fleets_fleet_id_wings_wing_id_squads(fleet_id, wing_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->post_fleets_fleet_id_wings_wing_id_squads: #{e}"
end
```

#### Using the post_fleets_fleet_id_wings_wing_id_squads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FleetsFleetIdWingsWingIdSquadsPost>, Integer, Hash)> post_fleets_fleet_id_wings_wing_id_squads_with_http_info(fleet_id, wing_id, x_compatibility_date, opts)

```ruby
begin
  # Create fleet squad
  data, status_code, headers = api_instance.post_fleets_fleet_id_wings_wing_id_squads_with_http_info(fleet_id, wing_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FleetsFleetIdWingsWingIdSquadsPost>
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->post_fleets_fleet_id_wings_wing_id_squads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** |  |  |
| **wing_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**FleetsFleetIdWingsWingIdSquadsPost**](FleetsFleetIdWingsWingIdSquadsPost.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_fleets_fleet_id

> put_fleets_fleet_id(fleet_id, x_compatibility_date, put_fleets_fleet_id_request, opts)

Update fleet

Update settings about a fleet

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::FleetsApi.new
fleet_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
put_fleets_fleet_id_request = ESI::PutFleetsFleetIdRequest.new # PutFleetsFleetIdRequest | 
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Update fleet
  api_instance.put_fleets_fleet_id(fleet_id, x_compatibility_date, put_fleets_fleet_id_request, opts)
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->put_fleets_fleet_id: #{e}"
end
```

#### Using the put_fleets_fleet_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_fleets_fleet_id_with_http_info(fleet_id, x_compatibility_date, put_fleets_fleet_id_request, opts)

```ruby
begin
  # Update fleet
  data, status_code, headers = api_instance.put_fleets_fleet_id_with_http_info(fleet_id, x_compatibility_date, put_fleets_fleet_id_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->put_fleets_fleet_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **put_fleets_fleet_id_request** | [**PutFleetsFleetIdRequest**](PutFleetsFleetIdRequest.md) |  |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_fleets_fleet_id_members_member_id

> put_fleets_fleet_id_members_member_id(fleet_id, member_id, x_compatibility_date, put_fleets_fleet_id_members_member_id_request, opts)

Move fleet member

Move a fleet member around

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::FleetsApi.new
fleet_id = 789 # Integer | 
member_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
put_fleets_fleet_id_members_member_id_request = ESI::PutFleetsFleetIdMembersMemberIdRequest.new({role: 'fleet_commander'}) # PutFleetsFleetIdMembersMemberIdRequest | 
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Move fleet member
  api_instance.put_fleets_fleet_id_members_member_id(fleet_id, member_id, x_compatibility_date, put_fleets_fleet_id_members_member_id_request, opts)
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->put_fleets_fleet_id_members_member_id: #{e}"
end
```

#### Using the put_fleets_fleet_id_members_member_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_fleets_fleet_id_members_member_id_with_http_info(fleet_id, member_id, x_compatibility_date, put_fleets_fleet_id_members_member_id_request, opts)

```ruby
begin
  # Move fleet member
  data, status_code, headers = api_instance.put_fleets_fleet_id_members_member_id_with_http_info(fleet_id, member_id, x_compatibility_date, put_fleets_fleet_id_members_member_id_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->put_fleets_fleet_id_members_member_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** |  |  |
| **member_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **put_fleets_fleet_id_members_member_id_request** | [**PutFleetsFleetIdMembersMemberIdRequest**](PutFleetsFleetIdMembersMemberIdRequest.md) |  |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_fleets_fleet_id_squads_squad_id

> put_fleets_fleet_id_squads_squad_id(fleet_id, squad_id, x_compatibility_date, put_fleets_fleet_id_squads_squad_id_request, opts)

Rename fleet squad

Rename a fleet squad

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::FleetsApi.new
fleet_id = 789 # Integer | 
squad_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
put_fleets_fleet_id_squads_squad_id_request = ESI::PutFleetsFleetIdSquadsSquadIdRequest.new({name: 'name_example'}) # PutFleetsFleetIdSquadsSquadIdRequest | 
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Rename fleet squad
  api_instance.put_fleets_fleet_id_squads_squad_id(fleet_id, squad_id, x_compatibility_date, put_fleets_fleet_id_squads_squad_id_request, opts)
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->put_fleets_fleet_id_squads_squad_id: #{e}"
end
```

#### Using the put_fleets_fleet_id_squads_squad_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_fleets_fleet_id_squads_squad_id_with_http_info(fleet_id, squad_id, x_compatibility_date, put_fleets_fleet_id_squads_squad_id_request, opts)

```ruby
begin
  # Rename fleet squad
  data, status_code, headers = api_instance.put_fleets_fleet_id_squads_squad_id_with_http_info(fleet_id, squad_id, x_compatibility_date, put_fleets_fleet_id_squads_squad_id_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->put_fleets_fleet_id_squads_squad_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** |  |  |
| **squad_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **put_fleets_fleet_id_squads_squad_id_request** | [**PutFleetsFleetIdSquadsSquadIdRequest**](PutFleetsFleetIdSquadsSquadIdRequest.md) |  |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_fleets_fleet_id_wings_wing_id

> put_fleets_fleet_id_wings_wing_id(fleet_id, wing_id, x_compatibility_date, put_fleets_fleet_id_squads_squad_id_request, opts)

Rename fleet wing

Rename a fleet wing

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::FleetsApi.new
fleet_id = 789 # Integer | 
wing_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
put_fleets_fleet_id_squads_squad_id_request = ESI::PutFleetsFleetIdSquadsSquadIdRequest.new({name: 'name_example'}) # PutFleetsFleetIdSquadsSquadIdRequest | 
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Rename fleet wing
  api_instance.put_fleets_fleet_id_wings_wing_id(fleet_id, wing_id, x_compatibility_date, put_fleets_fleet_id_squads_squad_id_request, opts)
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->put_fleets_fleet_id_wings_wing_id: #{e}"
end
```

#### Using the put_fleets_fleet_id_wings_wing_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_fleets_fleet_id_wings_wing_id_with_http_info(fleet_id, wing_id, x_compatibility_date, put_fleets_fleet_id_squads_squad_id_request, opts)

```ruby
begin
  # Rename fleet wing
  data, status_code, headers = api_instance.put_fleets_fleet_id_wings_wing_id_with_http_info(fleet_id, wing_id, x_compatibility_date, put_fleets_fleet_id_squads_squad_id_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ESI::ApiError => e
  puts "Error when calling FleetsApi->put_fleets_fleet_id_wings_wing_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** |  |  |
| **wing_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **put_fleets_fleet_id_squads_squad_id_request** | [**PutFleetsFleetIdSquadsSquadIdRequest**](PutFleetsFleetIdSquadsSquadIdRequest.md) |  |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

