# ESI::SkillsApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_attributes**](SkillsApi.md#get_characters_character_id_attributes) | **GET** /characters/{character_id}/attributes | Get character attributes |
| [**get_characters_character_id_skillqueue**](SkillsApi.md#get_characters_character_id_skillqueue) | **GET** /characters/{character_id}/skillqueue | Get character&#39;s skill queue |
| [**get_characters_character_id_skills**](SkillsApi.md#get_characters_character_id_skills) | **GET** /characters/{character_id}/skills | Get character skills |


## get_characters_character_id_attributes

> <CharactersCharacterIdAttributesGet> get_characters_character_id_attributes(character_id, x_compatibility_date, opts)

Get character attributes

Return attributes of a character

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::SkillsApi.new
character_id = 789 # Integer | The ID of the character
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get character attributes
  result = api_instance.get_characters_character_id_attributes(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling SkillsApi->get_characters_character_id_attributes: #{e}"
end
```

#### Using the get_characters_character_id_attributes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CharactersCharacterIdAttributesGet>, Integer, Hash)> get_characters_character_id_attributes_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # Get character attributes
  data, status_code, headers = api_instance.get_characters_character_id_attributes_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CharactersCharacterIdAttributesGet>
rescue ESI::ApiError => e
  puts "Error when calling SkillsApi->get_characters_character_id_attributes_with_http_info: #{e}"
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

[**CharactersCharacterIdAttributesGet**](CharactersCharacterIdAttributesGet.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_skillqueue

> <Array<CharactersSkillqueueSkill>> get_characters_character_id_skillqueue(character_id, x_compatibility_date, opts)

Get character's skill queue

List the configured skill queue for the given character.  Entries that have their finish time in the past are completed, but aren't updated in the \"/skills\" route yet. This will happen the next time the character logs in.

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::SkillsApi.new
character_id = TODO # Integer | The ID of the character
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get character's skill queue
  result = api_instance.get_characters_character_id_skillqueue(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling SkillsApi->get_characters_character_id_skillqueue: #{e}"
end
```

#### Using the get_characters_character_id_skillqueue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersSkillqueueSkill>>, Integer, Hash)> get_characters_character_id_skillqueue_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # Get character's skill queue
  data, status_code, headers = api_instance.get_characters_character_id_skillqueue_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersSkillqueueSkill>>
rescue ESI::ApiError => e
  puts "Error when calling SkillsApi->get_characters_character_id_skillqueue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | [**Integer**](.md) | The ID of the character |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;CharactersSkillqueueSkill&gt;**](CharactersSkillqueueSkill.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_skills

> <CharactersSkills> get_characters_character_id_skills(character_id, x_compatibility_date, opts)

Get character skills

List all trained skills for the given character.  Skills returned by this route can be out-of-date if the character hasn't logged in since one or more skills completed training. Use the /skillqueue route to check for skills that completed training. Entries that are in the past need to be applied on top of this list to get an accurate view of the character's current skills.

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::SkillsApi.new
character_id = TODO # Integer | The ID of the character
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get character skills
  result = api_instance.get_characters_character_id_skills(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling SkillsApi->get_characters_character_id_skills: #{e}"
end
```

#### Using the get_characters_character_id_skills_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CharactersSkills>, Integer, Hash)> get_characters_character_id_skills_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # Get character skills
  data, status_code, headers = api_instance.get_characters_character_id_skills_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CharactersSkills>
rescue ESI::ApiError => e
  puts "Error when calling SkillsApi->get_characters_character_id_skills_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | [**Integer**](.md) | The ID of the character |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**CharactersSkills**](CharactersSkills.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

