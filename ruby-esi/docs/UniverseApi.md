# ESI::UniverseApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_universe_ancestries**](UniverseApi.md#get_universe_ancestries) | **GET** /universe/ancestries | Get ancestries |
| [**get_universe_asteroid_belts_asteroid_belt_id**](UniverseApi.md#get_universe_asteroid_belts_asteroid_belt_id) | **GET** /universe/asteroid_belts/{asteroid_belt_id} | Get asteroid belt information |
| [**get_universe_bloodlines**](UniverseApi.md#get_universe_bloodlines) | **GET** /universe/bloodlines | Get bloodlines |
| [**get_universe_categories**](UniverseApi.md#get_universe_categories) | **GET** /universe/categories | Get item categories |
| [**get_universe_categories_category_id**](UniverseApi.md#get_universe_categories_category_id) | **GET** /universe/categories/{category_id} | Get item category information |
| [**get_universe_constellations**](UniverseApi.md#get_universe_constellations) | **GET** /universe/constellations | Get constellations |
| [**get_universe_constellations_constellation_id**](UniverseApi.md#get_universe_constellations_constellation_id) | **GET** /universe/constellations/{constellation_id} | Get constellation information |
| [**get_universe_factions**](UniverseApi.md#get_universe_factions) | **GET** /universe/factions | Get factions |
| [**get_universe_graphics**](UniverseApi.md#get_universe_graphics) | **GET** /universe/graphics | Get graphics |
| [**get_universe_graphics_graphic_id**](UniverseApi.md#get_universe_graphics_graphic_id) | **GET** /universe/graphics/{graphic_id} | Get graphic information |
| [**get_universe_groups**](UniverseApi.md#get_universe_groups) | **GET** /universe/groups | Get item groups |
| [**get_universe_groups_group_id**](UniverseApi.md#get_universe_groups_group_id) | **GET** /universe/groups/{group_id} | Get item group information |
| [**get_universe_moons_moon_id**](UniverseApi.md#get_universe_moons_moon_id) | **GET** /universe/moons/{moon_id} | Get moon information |
| [**get_universe_planets_planet_id**](UniverseApi.md#get_universe_planets_planet_id) | **GET** /universe/planets/{planet_id} | Get planet information |
| [**get_universe_races**](UniverseApi.md#get_universe_races) | **GET** /universe/races | Get character races |
| [**get_universe_regions**](UniverseApi.md#get_universe_regions) | **GET** /universe/regions | Get regions |
| [**get_universe_regions_region_id**](UniverseApi.md#get_universe_regions_region_id) | **GET** /universe/regions/{region_id} | Get region information |
| [**get_universe_stargates_stargate_id**](UniverseApi.md#get_universe_stargates_stargate_id) | **GET** /universe/stargates/{stargate_id} | Get stargate information |
| [**get_universe_stars_star_id**](UniverseApi.md#get_universe_stars_star_id) | **GET** /universe/stars/{star_id} | Get star information |
| [**get_universe_stations_station_id**](UniverseApi.md#get_universe_stations_station_id) | **GET** /universe/stations/{station_id} | Get station information |
| [**get_universe_structures**](UniverseApi.md#get_universe_structures) | **GET** /universe/structures | List all public structures |
| [**get_universe_structures_structure_id**](UniverseApi.md#get_universe_structures_structure_id) | **GET** /universe/structures/{structure_id} | Get structure information |
| [**get_universe_system_jumps**](UniverseApi.md#get_universe_system_jumps) | **GET** /universe/system_jumps | Get system jumps |
| [**get_universe_system_kills**](UniverseApi.md#get_universe_system_kills) | **GET** /universe/system_kills | Get system kills |
| [**get_universe_systems**](UniverseApi.md#get_universe_systems) | **GET** /universe/systems | Get solar systems |
| [**get_universe_systems_system_id**](UniverseApi.md#get_universe_systems_system_id) | **GET** /universe/systems/{system_id} | Get solar system information |
| [**get_universe_types**](UniverseApi.md#get_universe_types) | **GET** /universe/types | Get types |
| [**get_universe_types_type_id**](UniverseApi.md#get_universe_types_type_id) | **GET** /universe/types/{type_id} | Get type information |
| [**post_universe_ids**](UniverseApi.md#post_universe_ids) | **POST** /universe/ids | Bulk names to IDs |
| [**post_universe_names**](UniverseApi.md#post_universe_names) | **POST** /universe/names | Get names and categories for a set of IDs |


## get_universe_ancestries

> <Array<UniverseAncestriesGetInner>> get_universe_ancestries(x_compatibility_date, opts)

Get ancestries

Get all character ancestries  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get ancestries
  result = api_instance.get_universe_ancestries(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_ancestries: #{e}"
end
```

#### Using the get_universe_ancestries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniverseAncestriesGetInner>>, Integer, Hash)> get_universe_ancestries_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # Get ancestries
  data, status_code, headers = api_instance.get_universe_ancestries_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniverseAncestriesGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_ancestries_with_http_info: #{e}"
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

[**Array&lt;UniverseAncestriesGetInner&gt;**](UniverseAncestriesGetInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_asteroid_belts_asteroid_belt_id

> <UniverseAsteroidBeltsAsteroidBeltIdGet> get_universe_asteroid_belts_asteroid_belt_id(asteroid_belt_id, x_compatibility_date, opts)

Get asteroid belt information

Get information on an asteroid belt  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
asteroid_belt_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get asteroid belt information
  result = api_instance.get_universe_asteroid_belts_asteroid_belt_id(asteroid_belt_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_asteroid_belts_asteroid_belt_id: #{e}"
end
```

#### Using the get_universe_asteroid_belts_asteroid_belt_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UniverseAsteroidBeltsAsteroidBeltIdGet>, Integer, Hash)> get_universe_asteroid_belts_asteroid_belt_id_with_http_info(asteroid_belt_id, x_compatibility_date, opts)

```ruby
begin
  # Get asteroid belt information
  data, status_code, headers = api_instance.get_universe_asteroid_belts_asteroid_belt_id_with_http_info(asteroid_belt_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UniverseAsteroidBeltsAsteroidBeltIdGet>
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_asteroid_belts_asteroid_belt_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asteroid_belt_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**UniverseAsteroidBeltsAsteroidBeltIdGet**](UniverseAsteroidBeltsAsteroidBeltIdGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_bloodlines

> <Array<UniverseBloodlinesGetInner>> get_universe_bloodlines(x_compatibility_date, opts)

Get bloodlines

Get a list of bloodlines  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get bloodlines
  result = api_instance.get_universe_bloodlines(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_bloodlines: #{e}"
end
```

#### Using the get_universe_bloodlines_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniverseBloodlinesGetInner>>, Integer, Hash)> get_universe_bloodlines_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # Get bloodlines
  data, status_code, headers = api_instance.get_universe_bloodlines_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniverseBloodlinesGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_bloodlines_with_http_info: #{e}"
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

[**Array&lt;UniverseBloodlinesGetInner&gt;**](UniverseBloodlinesGetInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_categories

> Array&lt;Integer&gt; get_universe_categories(x_compatibility_date, opts)

Get item categories

Get a list of item categories  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get item categories
  result = api_instance.get_universe_categories(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_categories: #{e}"
end
```

#### Using the get_universe_categories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_universe_categories_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # Get item categories
  data, status_code, headers = api_instance.get_universe_categories_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_categories_with_http_info: #{e}"
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


## get_universe_categories_category_id

> <UniverseCategoriesCategoryIdGet> get_universe_categories_category_id(category_id, x_compatibility_date, opts)

Get item category information

Get information of an item category  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
category_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get item category information
  result = api_instance.get_universe_categories_category_id(category_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_categories_category_id: #{e}"
end
```

#### Using the get_universe_categories_category_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UniverseCategoriesCategoryIdGet>, Integer, Hash)> get_universe_categories_category_id_with_http_info(category_id, x_compatibility_date, opts)

```ruby
begin
  # Get item category information
  data, status_code, headers = api_instance.get_universe_categories_category_id_with_http_info(category_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UniverseCategoriesCategoryIdGet>
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_categories_category_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**UniverseCategoriesCategoryIdGet**](UniverseCategoriesCategoryIdGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_constellations

> Array&lt;Integer&gt; get_universe_constellations(x_compatibility_date, opts)

Get constellations

Get a list of constellations  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get constellations
  result = api_instance.get_universe_constellations(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_constellations: #{e}"
end
```

#### Using the get_universe_constellations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_universe_constellations_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # Get constellations
  data, status_code, headers = api_instance.get_universe_constellations_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_constellations_with_http_info: #{e}"
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


## get_universe_constellations_constellation_id

> <UniverseConstellationsConstellationIdGet> get_universe_constellations_constellation_id(constellation_id, x_compatibility_date, opts)

Get constellation information

Get information on a constellation  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
constellation_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get constellation information
  result = api_instance.get_universe_constellations_constellation_id(constellation_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_constellations_constellation_id: #{e}"
end
```

#### Using the get_universe_constellations_constellation_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UniverseConstellationsConstellationIdGet>, Integer, Hash)> get_universe_constellations_constellation_id_with_http_info(constellation_id, x_compatibility_date, opts)

```ruby
begin
  # Get constellation information
  data, status_code, headers = api_instance.get_universe_constellations_constellation_id_with_http_info(constellation_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UniverseConstellationsConstellationIdGet>
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_constellations_constellation_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **constellation_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**UniverseConstellationsConstellationIdGet**](UniverseConstellationsConstellationIdGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_factions

> <Array<UniverseFactionsGetInner>> get_universe_factions(x_compatibility_date, opts)

Get factions

Get a list of factions  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get factions
  result = api_instance.get_universe_factions(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_factions: #{e}"
end
```

#### Using the get_universe_factions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniverseFactionsGetInner>>, Integer, Hash)> get_universe_factions_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # Get factions
  data, status_code, headers = api_instance.get_universe_factions_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniverseFactionsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_factions_with_http_info: #{e}"
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

[**Array&lt;UniverseFactionsGetInner&gt;**](UniverseFactionsGetInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_graphics

> Array&lt;Integer&gt; get_universe_graphics(x_compatibility_date, opts)

Get graphics

Get a list of graphics  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get graphics
  result = api_instance.get_universe_graphics(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_graphics: #{e}"
end
```

#### Using the get_universe_graphics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_universe_graphics_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # Get graphics
  data, status_code, headers = api_instance.get_universe_graphics_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_graphics_with_http_info: #{e}"
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


## get_universe_graphics_graphic_id

> <UniverseGraphicsGraphicIdGet> get_universe_graphics_graphic_id(graphic_id, x_compatibility_date, opts)

Get graphic information

Get information on a graphic  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
graphic_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get graphic information
  result = api_instance.get_universe_graphics_graphic_id(graphic_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_graphics_graphic_id: #{e}"
end
```

#### Using the get_universe_graphics_graphic_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UniverseGraphicsGraphicIdGet>, Integer, Hash)> get_universe_graphics_graphic_id_with_http_info(graphic_id, x_compatibility_date, opts)

```ruby
begin
  # Get graphic information
  data, status_code, headers = api_instance.get_universe_graphics_graphic_id_with_http_info(graphic_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UniverseGraphicsGraphicIdGet>
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_graphics_graphic_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **graphic_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**UniverseGraphicsGraphicIdGet**](UniverseGraphicsGraphicIdGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_groups

> Array&lt;Integer&gt; get_universe_groups(x_compatibility_date, opts)

Get item groups

Get a list of item groups  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  page: 56, # Integer | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get item groups
  result = api_instance.get_universe_groups(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_groups: #{e}"
end
```

#### Using the get_universe_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_universe_groups_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # Get item groups
  data, status_code, headers = api_instance.get_universe_groups_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **page** | **Integer** |  | [optional] |
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


## get_universe_groups_group_id

> <UniverseGroupsGroupIdGet> get_universe_groups_group_id(group_id, x_compatibility_date, opts)

Get item group information

Get information on an item group  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
group_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get item group information
  result = api_instance.get_universe_groups_group_id(group_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_groups_group_id: #{e}"
end
```

#### Using the get_universe_groups_group_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UniverseGroupsGroupIdGet>, Integer, Hash)> get_universe_groups_group_id_with_http_info(group_id, x_compatibility_date, opts)

```ruby
begin
  # Get item group information
  data, status_code, headers = api_instance.get_universe_groups_group_id_with_http_info(group_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UniverseGroupsGroupIdGet>
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_groups_group_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**UniverseGroupsGroupIdGet**](UniverseGroupsGroupIdGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_moons_moon_id

> <UniverseMoonsMoonIdGet> get_universe_moons_moon_id(moon_id, x_compatibility_date, opts)

Get moon information

Get information on a moon  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
moon_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get moon information
  result = api_instance.get_universe_moons_moon_id(moon_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_moons_moon_id: #{e}"
end
```

#### Using the get_universe_moons_moon_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UniverseMoonsMoonIdGet>, Integer, Hash)> get_universe_moons_moon_id_with_http_info(moon_id, x_compatibility_date, opts)

```ruby
begin
  # Get moon information
  data, status_code, headers = api_instance.get_universe_moons_moon_id_with_http_info(moon_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UniverseMoonsMoonIdGet>
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_moons_moon_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **moon_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**UniverseMoonsMoonIdGet**](UniverseMoonsMoonIdGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_planets_planet_id

> <UniversePlanetsPlanetIdGet> get_universe_planets_planet_id(planet_id, x_compatibility_date, opts)

Get planet information

Get information on a planet  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
planet_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get planet information
  result = api_instance.get_universe_planets_planet_id(planet_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_planets_planet_id: #{e}"
end
```

#### Using the get_universe_planets_planet_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UniversePlanetsPlanetIdGet>, Integer, Hash)> get_universe_planets_planet_id_with_http_info(planet_id, x_compatibility_date, opts)

```ruby
begin
  # Get planet information
  data, status_code, headers = api_instance.get_universe_planets_planet_id_with_http_info(planet_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UniversePlanetsPlanetIdGet>
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_planets_planet_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **planet_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**UniversePlanetsPlanetIdGet**](UniversePlanetsPlanetIdGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_races

> <Array<UniverseRacesGetInner>> get_universe_races(x_compatibility_date, opts)

Get character races

Get a list of character races  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get character races
  result = api_instance.get_universe_races(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_races: #{e}"
end
```

#### Using the get_universe_races_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniverseRacesGetInner>>, Integer, Hash)> get_universe_races_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # Get character races
  data, status_code, headers = api_instance.get_universe_races_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniverseRacesGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_races_with_http_info: #{e}"
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

[**Array&lt;UniverseRacesGetInner&gt;**](UniverseRacesGetInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_regions

> Array&lt;Integer&gt; get_universe_regions(x_compatibility_date, opts)

Get regions

Get a list of regions  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get regions
  result = api_instance.get_universe_regions(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_regions: #{e}"
end
```

#### Using the get_universe_regions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_universe_regions_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # Get regions
  data, status_code, headers = api_instance.get_universe_regions_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_regions_with_http_info: #{e}"
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


## get_universe_regions_region_id

> <UniverseRegionsRegionIdGet> get_universe_regions_region_id(region_id, x_compatibility_date, opts)

Get region information

Get information on a region  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
region_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get region information
  result = api_instance.get_universe_regions_region_id(region_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_regions_region_id: #{e}"
end
```

#### Using the get_universe_regions_region_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UniverseRegionsRegionIdGet>, Integer, Hash)> get_universe_regions_region_id_with_http_info(region_id, x_compatibility_date, opts)

```ruby
begin
  # Get region information
  data, status_code, headers = api_instance.get_universe_regions_region_id_with_http_info(region_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UniverseRegionsRegionIdGet>
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_regions_region_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**UniverseRegionsRegionIdGet**](UniverseRegionsRegionIdGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_stargates_stargate_id

> <UniverseStargatesStargateIdGet> get_universe_stargates_stargate_id(stargate_id, x_compatibility_date, opts)

Get stargate information

Get information on a stargate  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
stargate_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get stargate information
  result = api_instance.get_universe_stargates_stargate_id(stargate_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_stargates_stargate_id: #{e}"
end
```

#### Using the get_universe_stargates_stargate_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UniverseStargatesStargateIdGet>, Integer, Hash)> get_universe_stargates_stargate_id_with_http_info(stargate_id, x_compatibility_date, opts)

```ruby
begin
  # Get stargate information
  data, status_code, headers = api_instance.get_universe_stargates_stargate_id_with_http_info(stargate_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UniverseStargatesStargateIdGet>
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_stargates_stargate_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stargate_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**UniverseStargatesStargateIdGet**](UniverseStargatesStargateIdGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_stars_star_id

> <UniverseStarsStarIdGet> get_universe_stars_star_id(star_id, x_compatibility_date, opts)

Get star information

Get information on a star  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
star_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get star information
  result = api_instance.get_universe_stars_star_id(star_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_stars_star_id: #{e}"
end
```

#### Using the get_universe_stars_star_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UniverseStarsStarIdGet>, Integer, Hash)> get_universe_stars_star_id_with_http_info(star_id, x_compatibility_date, opts)

```ruby
begin
  # Get star information
  data, status_code, headers = api_instance.get_universe_stars_star_id_with_http_info(star_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UniverseStarsStarIdGet>
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_stars_star_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **star_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**UniverseStarsStarIdGet**](UniverseStarsStarIdGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_stations_station_id

> <UniverseStationsStationIdGet> get_universe_stations_station_id(station_id, x_compatibility_date, opts)

Get station information

Get information on a station  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
station_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get station information
  result = api_instance.get_universe_stations_station_id(station_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_stations_station_id: #{e}"
end
```

#### Using the get_universe_stations_station_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UniverseStationsStationIdGet>, Integer, Hash)> get_universe_stations_station_id_with_http_info(station_id, x_compatibility_date, opts)

```ruby
begin
  # Get station information
  data, status_code, headers = api_instance.get_universe_stations_station_id_with_http_info(station_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UniverseStationsStationIdGet>
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_stations_station_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **station_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**UniverseStationsStationIdGet**](UniverseStationsStationIdGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_structures

> Array&lt;Integer&gt; get_universe_structures(x_compatibility_date, opts)

List all public structures

List all public structures

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  filter: 'market', # String | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # List all public structures
  result = api_instance.get_universe_structures(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_structures: #{e}"
end
```

#### Using the get_universe_structures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_universe_structures_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # List all public structures
  data, status_code, headers = api_instance.get_universe_structures_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_structures_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **filter** | **String** |  | [optional] |
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


## get_universe_structures_structure_id

> <UniverseStructuresStructureIdGet> get_universe_structures_structure_id(structure_id, x_compatibility_date, opts)

Get structure information

Returns information on requested structure if you are on the ACL. Otherwise, returns \"Forbidden\" for all inputs.

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::UniverseApi.new
structure_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get structure information
  result = api_instance.get_universe_structures_structure_id(structure_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_structures_structure_id: #{e}"
end
```

#### Using the get_universe_structures_structure_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UniverseStructuresStructureIdGet>, Integer, Hash)> get_universe_structures_structure_id_with_http_info(structure_id, x_compatibility_date, opts)

```ruby
begin
  # Get structure information
  data, status_code, headers = api_instance.get_universe_structures_structure_id_with_http_info(structure_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UniverseStructuresStructureIdGet>
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_structures_structure_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **structure_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**UniverseStructuresStructureIdGet**](UniverseStructuresStructureIdGet.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_system_jumps

> <Array<UniverseSystemJumpsGetInner>> get_universe_system_jumps(x_compatibility_date, opts)

Get system jumps

Get the number of jumps in solar systems within the last hour ending at the timestamp of the Last-Modified header, excluding wormhole space. Only systems with jumps will be listed

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get system jumps
  result = api_instance.get_universe_system_jumps(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_system_jumps: #{e}"
end
```

#### Using the get_universe_system_jumps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniverseSystemJumpsGetInner>>, Integer, Hash)> get_universe_system_jumps_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # Get system jumps
  data, status_code, headers = api_instance.get_universe_system_jumps_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniverseSystemJumpsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_system_jumps_with_http_info: #{e}"
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

[**Array&lt;UniverseSystemJumpsGetInner&gt;**](UniverseSystemJumpsGetInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_system_kills

> <Array<UniverseSystemKillsGetInner>> get_universe_system_kills(x_compatibility_date, opts)

Get system kills

Get the number of ship, pod and NPC kills per solar system within the last hour ending at the timestamp of the Last-Modified header, excluding wormhole space. Only systems with kills will be listed

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get system kills
  result = api_instance.get_universe_system_kills(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_system_kills: #{e}"
end
```

#### Using the get_universe_system_kills_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniverseSystemKillsGetInner>>, Integer, Hash)> get_universe_system_kills_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # Get system kills
  data, status_code, headers = api_instance.get_universe_system_kills_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniverseSystemKillsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_system_kills_with_http_info: #{e}"
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

[**Array&lt;UniverseSystemKillsGetInner&gt;**](UniverseSystemKillsGetInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_systems

> Array&lt;Integer&gt; get_universe_systems(x_compatibility_date, opts)

Get solar systems

Get a list of solar systems  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get solar systems
  result = api_instance.get_universe_systems(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_systems: #{e}"
end
```

#### Using the get_universe_systems_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_universe_systems_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # Get solar systems
  data, status_code, headers = api_instance.get_universe_systems_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_systems_with_http_info: #{e}"
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


## get_universe_systems_system_id

> <UniverseSystemsSystemIdGet> get_universe_systems_system_id(system_id, x_compatibility_date, opts)

Get solar system information

Get information on a solar system.  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
system_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get solar system information
  result = api_instance.get_universe_systems_system_id(system_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_systems_system_id: #{e}"
end
```

#### Using the get_universe_systems_system_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UniverseSystemsSystemIdGet>, Integer, Hash)> get_universe_systems_system_id_with_http_info(system_id, x_compatibility_date, opts)

```ruby
begin
  # Get solar system information
  data, status_code, headers = api_instance.get_universe_systems_system_id_with_http_info(system_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UniverseSystemsSystemIdGet>
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_systems_system_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **system_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**UniverseSystemsSystemIdGet**](UniverseSystemsSystemIdGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_types

> Array&lt;Integer&gt; get_universe_types(x_compatibility_date, opts)

Get types

Get a list of type ids  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  page: 56, # Integer | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get types
  result = api_instance.get_universe_types(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_types: #{e}"
end
```

#### Using the get_universe_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_universe_types_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # Get types
  data, status_code, headers = api_instance.get_universe_types_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **page** | **Integer** |  | [optional] |
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


## get_universe_types_type_id

> <UniverseTypesTypeIdGet> get_universe_types_type_id(type_id, x_compatibility_date, opts)

Get type information

Get information on a type  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
type_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get type information
  result = api_instance.get_universe_types_type_id(type_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_types_type_id: #{e}"
end
```

#### Using the get_universe_types_type_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UniverseTypesTypeIdGet>, Integer, Hash)> get_universe_types_type_id_with_http_info(type_id, x_compatibility_date, opts)

```ruby
begin
  # Get type information
  data, status_code, headers = api_instance.get_universe_types_type_id_with_http_info(type_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UniverseTypesTypeIdGet>
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->get_universe_types_type_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**UniverseTypesTypeIdGet**](UniverseTypesTypeIdGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_universe_ids

> <UniverseIdsPost> post_universe_ids(x_compatibility_date, request_body, opts)

Bulk names to IDs

Resolve a set of names to IDs in the following categories: agents, alliances, characters, constellations, corporations factions, inventory_types, regions, stations, and systems. Only exact matches will be returned. All names searched for are cached for 12 hours

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
request_body = ['property_example'] # Array<String> | 
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Bulk names to IDs
  result = api_instance.post_universe_ids(x_compatibility_date, request_body, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->post_universe_ids: #{e}"
end
```

#### Using the post_universe_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UniverseIdsPost>, Integer, Hash)> post_universe_ids_with_http_info(x_compatibility_date, request_body, opts)

```ruby
begin
  # Bulk names to IDs
  data, status_code, headers = api_instance.post_universe_ids_with_http_info(x_compatibility_date, request_body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UniverseIdsPost>
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->post_universe_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **request_body** | [**Array&lt;String&gt;**](String.md) |  |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**UniverseIdsPost**](UniverseIdsPost.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_universe_names

> <Array<UniverseNamesPostInner>> post_universe_names(x_compatibility_date, request_body, opts)

Get names and categories for a set of IDs

Resolve a set of IDs to names and categories. Supported ID's for resolving are: Characters, Corporations, Alliances, Stations, Solar Systems, Constellations, Regions, Types, Factions

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::UniverseApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
request_body = [3.56] # Array<Integer> | 
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get names and categories for a set of IDs
  result = api_instance.post_universe_names(x_compatibility_date, request_body, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->post_universe_names: #{e}"
end
```

#### Using the post_universe_names_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniverseNamesPostInner>>, Integer, Hash)> post_universe_names_with_http_info(x_compatibility_date, request_body, opts)

```ruby
begin
  # Get names and categories for a set of IDs
  data, status_code, headers = api_instance.post_universe_names_with_http_info(x_compatibility_date, request_body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniverseNamesPostInner>>
rescue ESI::ApiError => e
  puts "Error when calling UniverseApi->post_universe_names_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **request_body** | [**Array&lt;Integer&gt;**](Integer.md) |  |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;UniverseNamesPostInner&gt;**](UniverseNamesPostInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

