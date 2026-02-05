# ESI::ContactsApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_characters_character_id_contacts**](ContactsApi.md#delete_characters_character_id_contacts) | **DELETE** /characters/{character_id}/contacts | Delete contacts |
| [**get_alliances_alliance_id_contacts**](ContactsApi.md#get_alliances_alliance_id_contacts) | **GET** /alliances/{alliance_id}/contacts | Get alliance contacts |
| [**get_alliances_alliance_id_contacts_labels**](ContactsApi.md#get_alliances_alliance_id_contacts_labels) | **GET** /alliances/{alliance_id}/contacts/labels | Get alliance contact labels |
| [**get_characters_character_id_contacts**](ContactsApi.md#get_characters_character_id_contacts) | **GET** /characters/{character_id}/contacts | Get contacts |
| [**get_characters_character_id_contacts_labels**](ContactsApi.md#get_characters_character_id_contacts_labels) | **GET** /characters/{character_id}/contacts/labels | Get contact labels |
| [**get_corporations_corporation_id_contacts**](ContactsApi.md#get_corporations_corporation_id_contacts) | **GET** /corporations/{corporation_id}/contacts | Get corporation contacts |
| [**get_corporations_corporation_id_contacts_labels**](ContactsApi.md#get_corporations_corporation_id_contacts_labels) | **GET** /corporations/{corporation_id}/contacts/labels | Get corporation contact labels |
| [**post_characters_character_id_contacts**](ContactsApi.md#post_characters_character_id_contacts) | **POST** /characters/{character_id}/contacts | Add contacts |
| [**put_characters_character_id_contacts**](ContactsApi.md#put_characters_character_id_contacts) | **PUT** /characters/{character_id}/contacts | Edit contacts |


## delete_characters_character_id_contacts

> delete_characters_character_id_contacts(character_id, contact_ids, x_compatibility_date, opts)

Delete contacts

Bulk delete contacts

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::ContactsApi.new
character_id = 789 # Integer | The ID of the character
contact_ids = [3.56] # Array<Integer> | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Delete contacts
  api_instance.delete_characters_character_id_contacts(character_id, contact_ids, x_compatibility_date, opts)
rescue ESI::ApiError => e
  puts "Error when calling ContactsApi->delete_characters_character_id_contacts: #{e}"
end
```

#### Using the delete_characters_character_id_contacts_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_characters_character_id_contacts_with_http_info(character_id, contact_ids, x_compatibility_date, opts)

```ruby
begin
  # Delete contacts
  data, status_code, headers = api_instance.delete_characters_character_id_contacts_with_http_info(character_id, contact_ids, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ESI::ApiError => e
  puts "Error when calling ContactsApi->delete_characters_character_id_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **contact_ids** | [**Array&lt;Integer&gt;**](Integer.md) |  |  |
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


## get_alliances_alliance_id_contacts

> <Array<AlliancesAllianceIdContactsGetInner>> get_alliances_alliance_id_contacts(alliance_id, x_compatibility_date, opts)

Get alliance contacts

Return contacts of an alliance

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::ContactsApi.new
alliance_id = 789 # Integer | The ID of the alliance
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  page: 56, # Integer | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get alliance contacts
  result = api_instance.get_alliances_alliance_id_contacts(alliance_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling ContactsApi->get_alliances_alliance_id_contacts: #{e}"
end
```

#### Using the get_alliances_alliance_id_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AlliancesAllianceIdContactsGetInner>>, Integer, Hash)> get_alliances_alliance_id_contacts_with_http_info(alliance_id, x_compatibility_date, opts)

```ruby
begin
  # Get alliance contacts
  data, status_code, headers = api_instance.get_alliances_alliance_id_contacts_with_http_info(alliance_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AlliancesAllianceIdContactsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling ContactsApi->get_alliances_alliance_id_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alliance_id** | **Integer** | The ID of the alliance |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **page** | **Integer** |  | [optional] |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;AlliancesAllianceIdContactsGetInner&gt;**](AlliancesAllianceIdContactsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_alliances_alliance_id_contacts_labels

> <Array<AlliancesAllianceIdContactsLabelsGetInner>> get_alliances_alliance_id_contacts_labels(alliance_id, x_compatibility_date, opts)

Get alliance contact labels

Return custom labels for an alliance's contacts

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::ContactsApi.new
alliance_id = 789 # Integer | The ID of the alliance
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get alliance contact labels
  result = api_instance.get_alliances_alliance_id_contacts_labels(alliance_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling ContactsApi->get_alliances_alliance_id_contacts_labels: #{e}"
end
```

#### Using the get_alliances_alliance_id_contacts_labels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AlliancesAllianceIdContactsLabelsGetInner>>, Integer, Hash)> get_alliances_alliance_id_contacts_labels_with_http_info(alliance_id, x_compatibility_date, opts)

```ruby
begin
  # Get alliance contact labels
  data, status_code, headers = api_instance.get_alliances_alliance_id_contacts_labels_with_http_info(alliance_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AlliancesAllianceIdContactsLabelsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling ContactsApi->get_alliances_alliance_id_contacts_labels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alliance_id** | **Integer** | The ID of the alliance |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;AlliancesAllianceIdContactsLabelsGetInner&gt;**](AlliancesAllianceIdContactsLabelsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_contacts

> <Array<CharactersCharacterIdContactsGetInner>> get_characters_character_id_contacts(character_id, x_compatibility_date, opts)

Get contacts

Return contacts of a character

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::ContactsApi.new
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
  # Get contacts
  result = api_instance.get_characters_character_id_contacts(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling ContactsApi->get_characters_character_id_contacts: #{e}"
end
```

#### Using the get_characters_character_id_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdContactsGetInner>>, Integer, Hash)> get_characters_character_id_contacts_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # Get contacts
  data, status_code, headers = api_instance.get_characters_character_id_contacts_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdContactsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling ContactsApi->get_characters_character_id_contacts_with_http_info: #{e}"
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

[**Array&lt;CharactersCharacterIdContactsGetInner&gt;**](CharactersCharacterIdContactsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_contacts_labels

> <Array<AlliancesAllianceIdContactsLabelsGetInner>> get_characters_character_id_contacts_labels(character_id, x_compatibility_date, opts)

Get contact labels

Return custom labels for a character's contacts

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::ContactsApi.new
character_id = 789 # Integer | The ID of the character
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get contact labels
  result = api_instance.get_characters_character_id_contacts_labels(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling ContactsApi->get_characters_character_id_contacts_labels: #{e}"
end
```

#### Using the get_characters_character_id_contacts_labels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AlliancesAllianceIdContactsLabelsGetInner>>, Integer, Hash)> get_characters_character_id_contacts_labels_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # Get contact labels
  data, status_code, headers = api_instance.get_characters_character_id_contacts_labels_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AlliancesAllianceIdContactsLabelsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling ContactsApi->get_characters_character_id_contacts_labels_with_http_info: #{e}"
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

[**Array&lt;AlliancesAllianceIdContactsLabelsGetInner&gt;**](AlliancesAllianceIdContactsLabelsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_contacts

> <Array<CorporationsCorporationIdContactsGetInner>> get_corporations_corporation_id_contacts(corporation_id, x_compatibility_date, opts)

Get corporation contacts

Return contacts of a corporation

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::ContactsApi.new
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
  # Get corporation contacts
  result = api_instance.get_corporations_corporation_id_contacts(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling ContactsApi->get_corporations_corporation_id_contacts: #{e}"
end
```

#### Using the get_corporations_corporation_id_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdContactsGetInner>>, Integer, Hash)> get_corporations_corporation_id_contacts_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get corporation contacts
  data, status_code, headers = api_instance.get_corporations_corporation_id_contacts_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdContactsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling ContactsApi->get_corporations_corporation_id_contacts_with_http_info: #{e}"
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

[**Array&lt;CorporationsCorporationIdContactsGetInner&gt;**](CorporationsCorporationIdContactsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_contacts_labels

> <Array<AlliancesAllianceIdContactsLabelsGetInner>> get_corporations_corporation_id_contacts_labels(corporation_id, x_compatibility_date, opts)

Get corporation contact labels

Return custom labels for a corporation's contacts

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::ContactsApi.new
corporation_id = 789 # Integer | The ID of the corporation
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get corporation contact labels
  result = api_instance.get_corporations_corporation_id_contacts_labels(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling ContactsApi->get_corporations_corporation_id_contacts_labels: #{e}"
end
```

#### Using the get_corporations_corporation_id_contacts_labels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AlliancesAllianceIdContactsLabelsGetInner>>, Integer, Hash)> get_corporations_corporation_id_contacts_labels_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # Get corporation contact labels
  data, status_code, headers = api_instance.get_corporations_corporation_id_contacts_labels_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AlliancesAllianceIdContactsLabelsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling ContactsApi->get_corporations_corporation_id_contacts_labels_with_http_info: #{e}"
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

[**Array&lt;AlliancesAllianceIdContactsLabelsGetInner&gt;**](AlliancesAllianceIdContactsLabelsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_characters_character_id_contacts

> Array&lt;Integer&gt; post_characters_character_id_contacts(character_id, standing, x_compatibility_date, request_body, opts)

Add contacts

Bulk add contacts with same settings

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::ContactsApi.new
character_id = 789 # Integer | The ID of the character
standing = 1.2 # Float | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
request_body = [3.56] # Array<Integer> | 
opts = {
  label_ids: [3.56], # Array<Integer> | 
  watched: true, # Boolean | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Add contacts
  result = api_instance.post_characters_character_id_contacts(character_id, standing, x_compatibility_date, request_body, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling ContactsApi->post_characters_character_id_contacts: #{e}"
end
```

#### Using the post_characters_character_id_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> post_characters_character_id_contacts_with_http_info(character_id, standing, x_compatibility_date, request_body, opts)

```ruby
begin
  # Add contacts
  data, status_code, headers = api_instance.post_characters_character_id_contacts_with_http_info(character_id, standing, x_compatibility_date, request_body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue ESI::ApiError => e
  puts "Error when calling ContactsApi->post_characters_character_id_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **standing** | **Float** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **request_body** | [**Array&lt;Integer&gt;**](Integer.md) |  |  |
| **label_ids** | [**Array&lt;Integer&gt;**](Integer.md) |  | [optional] |
| **watched** | **Boolean** |  | [optional][default to false] |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

**Array&lt;Integer&gt;**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_characters_character_id_contacts

> put_characters_character_id_contacts(character_id, standing, x_compatibility_date, request_body, opts)

Edit contacts

Bulk edit contacts with same settings

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::ContactsApi.new
character_id = 789 # Integer | The ID of the character
standing = 1.2 # Float | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
request_body = [3.56] # Array<Integer> | 
opts = {
  label_ids: [3.56], # Array<Integer> | 
  watched: true, # Boolean | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Edit contacts
  api_instance.put_characters_character_id_contacts(character_id, standing, x_compatibility_date, request_body, opts)
rescue ESI::ApiError => e
  puts "Error when calling ContactsApi->put_characters_character_id_contacts: #{e}"
end
```

#### Using the put_characters_character_id_contacts_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_characters_character_id_contacts_with_http_info(character_id, standing, x_compatibility_date, request_body, opts)

```ruby
begin
  # Edit contacts
  data, status_code, headers = api_instance.put_characters_character_id_contacts_with_http_info(character_id, standing, x_compatibility_date, request_body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ESI::ApiError => e
  puts "Error when calling ContactsApi->put_characters_character_id_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **standing** | **Float** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **request_body** | [**Array&lt;Integer&gt;**](Integer.md) |  |  |
| **label_ids** | [**Array&lt;Integer&gt;**](Integer.md) |  | [optional] |
| **watched** | **Boolean** |  | [optional][default to false] |
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

