# ESI::PlanetaryInteractionApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_planets**](PlanetaryInteractionApi.md#get_characters_character_id_planets) | **GET** /characters/{character_id}/planets | Get colonies |
| [**get_characters_character_id_planets_planet_id**](PlanetaryInteractionApi.md#get_characters_character_id_planets_planet_id) | **GET** /characters/{character_id}/planets/{planet_id} | Get colony layout |
| [**get_corporations_corporation_id_customs_offices**](PlanetaryInteractionApi.md#get_corporations_corporation_id_customs_offices) | **GET** /corporations/{corporation_id}/customs_offices | List corporation customs offices |
| [**get_universe_schematics_schematic_id**](PlanetaryInteractionApi.md#get_universe_schematics_schematic_id) | **GET** /universe/schematics/{schematic_id} | Get schematic information |


## get_characters_character_id_planets

> <Array<CharactersCharacterIdPlanetsGetInner>> get_characters_character_id_planets(character_id, x_compatibility_date, opts)

Get colonies

Returns a list of all planetary colonies owned by a character.

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::PlanetaryInteractionApi.new
character_id = 789 # Integer | The ID of the character
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get colonies
  result = api_instance.get_characters_character_id_planets(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling PlanetaryInteractionApi->get_characters_character_id_planets: #{e}"
end
```

#### Using the get_characters_character_id_planets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdPlanetsGetInner>>, Integer, Hash)> get_characters_character_id_planets_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # Get colonies
  data, status_code, headers = api_instance.get_characters_character_id_planets_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdPlanetsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling PlanetaryInteractionApi->get_characters_character_id_planets_with_http_info: #{e}"
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

[**Array&lt;CharactersCharacterIdPlanetsGetInner&gt;**](CharactersCharacterIdPlanetsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_planets_planet_id

> <CharactersCharacterIdPlanetsPlanetIdGet> get_characters_character_id_planets_planet_id(character_id, planet_id, x_compatibility_date, opts)

Get colony layout

Returns full details on the layout of a single planetary colony, including links, pins and routes. Note: Planetary information is only recalculated when the colony is viewed through the client. Information will not update until this criteria is met.

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::PlanetaryInteractionApi.new
character_id = 789 # Integer | The ID of the character
planet_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get colony layout
  result = api_instance.get_characters_character_id_planets_planet_id(character_id, planet_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling PlanetaryInteractionApi->get_characters_character_id_planets_planet_id: #{e}"
end
```

#### Using the get_characters_character_id_planets_planet_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CharactersCharacterIdPlanetsPlanetIdGet>, Integer, Hash)> get_characters_character_id_planets_planet_id_with_http_info(character_id, planet_id, x_compatibility_date, opts)

```ruby
begin
  # Get colony layout
  data, status_code, headers = api_instance.get_characters_character_id_planets_planet_id_with_http_info(character_id, planet_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CharactersCharacterIdPlanetsPlanetIdGet>
rescue ESI::ApiError => e
  puts "Error when calling PlanetaryInteractionApi->get_characters_character_id_planets_planet_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **planet_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**CharactersCharacterIdPlanetsPlanetIdGet**](CharactersCharacterIdPlanetsPlanetIdGet.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_customs_offices

> <Array<CorporationsCorporationIdCustomsOfficesGetInner>> get_corporations_corporation_id_customs_offices(corporation_id, x_compatibility_date, opts)

List corporation customs offices

List customs offices owned by a corporation

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::PlanetaryInteractionApi.new
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
  # List corporation customs offices
  result = api_instance.get_corporations_corporation_id_customs_offices(corporation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling PlanetaryInteractionApi->get_corporations_corporation_id_customs_offices: #{e}"
end
```

#### Using the get_corporations_corporation_id_customs_offices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CorporationsCorporationIdCustomsOfficesGetInner>>, Integer, Hash)> get_corporations_corporation_id_customs_offices_with_http_info(corporation_id, x_compatibility_date, opts)

```ruby
begin
  # List corporation customs offices
  data, status_code, headers = api_instance.get_corporations_corporation_id_customs_offices_with_http_info(corporation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CorporationsCorporationIdCustomsOfficesGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling PlanetaryInteractionApi->get_corporations_corporation_id_customs_offices_with_http_info: #{e}"
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

[**Array&lt;CorporationsCorporationIdCustomsOfficesGetInner&gt;**](CorporationsCorporationIdCustomsOfficesGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_schematics_schematic_id

> <UniverseSchematicsSchematicIdGet> get_universe_schematics_schematic_id(schematic_id, x_compatibility_date, opts)

Get schematic information

Get information on a planetary factory schematic

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::PlanetaryInteractionApi.new
schematic_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get schematic information
  result = api_instance.get_universe_schematics_schematic_id(schematic_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling PlanetaryInteractionApi->get_universe_schematics_schematic_id: #{e}"
end
```

#### Using the get_universe_schematics_schematic_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UniverseSchematicsSchematicIdGet>, Integer, Hash)> get_universe_schematics_schematic_id_with_http_info(schematic_id, x_compatibility_date, opts)

```ruby
begin
  # Get schematic information
  data, status_code, headers = api_instance.get_universe_schematics_schematic_id_with_http_info(schematic_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UniverseSchematicsSchematicIdGet>
rescue ESI::ApiError => e
  puts "Error when calling PlanetaryInteractionApi->get_universe_schematics_schematic_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schematic_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**UniverseSchematicsSchematicIdGet**](UniverseSchematicsSchematicIdGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

