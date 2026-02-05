# ESI::DogmaApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_dogma_attributes**](DogmaApi.md#get_dogma_attributes) | **GET** /dogma/attributes | Get attributes |
| [**get_dogma_attributes_attribute_id**](DogmaApi.md#get_dogma_attributes_attribute_id) | **GET** /dogma/attributes/{attribute_id} | Get attribute information |
| [**get_dogma_dynamic_items_type_id_item_id**](DogmaApi.md#get_dogma_dynamic_items_type_id_item_id) | **GET** /dogma/dynamic/items/{type_id}/{item_id} | Get dynamic item information |
| [**get_dogma_effects**](DogmaApi.md#get_dogma_effects) | **GET** /dogma/effects | Get effects |
| [**get_dogma_effects_effect_id**](DogmaApi.md#get_dogma_effects_effect_id) | **GET** /dogma/effects/{effect_id} | Get effect information |


## get_dogma_attributes

> Array&lt;Integer&gt; get_dogma_attributes(x_compatibility_date, opts)

Get attributes

Get a list of dogma attribute ids  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::DogmaApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get attributes
  result = api_instance.get_dogma_attributes(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling DogmaApi->get_dogma_attributes: #{e}"
end
```

#### Using the get_dogma_attributes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_dogma_attributes_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # Get attributes
  data, status_code, headers = api_instance.get_dogma_attributes_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue ESI::ApiError => e
  puts "Error when calling DogmaApi->get_dogma_attributes_with_http_info: #{e}"
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


## get_dogma_attributes_attribute_id

> <DogmaAttributesAttributeIdGet> get_dogma_attributes_attribute_id(attribute_id, x_compatibility_date, opts)

Get attribute information

Get information on a dogma attribute  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::DogmaApi.new
attribute_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get attribute information
  result = api_instance.get_dogma_attributes_attribute_id(attribute_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling DogmaApi->get_dogma_attributes_attribute_id: #{e}"
end
```

#### Using the get_dogma_attributes_attribute_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DogmaAttributesAttributeIdGet>, Integer, Hash)> get_dogma_attributes_attribute_id_with_http_info(attribute_id, x_compatibility_date, opts)

```ruby
begin
  # Get attribute information
  data, status_code, headers = api_instance.get_dogma_attributes_attribute_id_with_http_info(attribute_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DogmaAttributesAttributeIdGet>
rescue ESI::ApiError => e
  puts "Error when calling DogmaApi->get_dogma_attributes_attribute_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attribute_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**DogmaAttributesAttributeIdGet**](DogmaAttributesAttributeIdGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dogma_dynamic_items_type_id_item_id

> <DogmaDynamicItemsTypeIdItemIdGet> get_dogma_dynamic_items_type_id_item_id(item_id, type_id, x_compatibility_date, opts)

Get dynamic item information

Returns info about a dynamic item resulting from mutation with a mutaplasmid.  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::DogmaApi.new
item_id = 789 # Integer | 
type_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get dynamic item information
  result = api_instance.get_dogma_dynamic_items_type_id_item_id(item_id, type_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling DogmaApi->get_dogma_dynamic_items_type_id_item_id: #{e}"
end
```

#### Using the get_dogma_dynamic_items_type_id_item_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DogmaDynamicItemsTypeIdItemIdGet>, Integer, Hash)> get_dogma_dynamic_items_type_id_item_id_with_http_info(item_id, type_id, x_compatibility_date, opts)

```ruby
begin
  # Get dynamic item information
  data, status_code, headers = api_instance.get_dogma_dynamic_items_type_id_item_id_with_http_info(item_id, type_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DogmaDynamicItemsTypeIdItemIdGet>
rescue ESI::ApiError => e
  puts "Error when calling DogmaApi->get_dogma_dynamic_items_type_id_item_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **item_id** | **Integer** |  |  |
| **type_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**DogmaDynamicItemsTypeIdItemIdGet**](DogmaDynamicItemsTypeIdItemIdGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dogma_effects

> Array&lt;Integer&gt; get_dogma_effects(x_compatibility_date, opts)

Get effects

Get a list of dogma effect ids  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::DogmaApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get effects
  result = api_instance.get_dogma_effects(x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling DogmaApi->get_dogma_effects: #{e}"
end
```

#### Using the get_dogma_effects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_dogma_effects_with_http_info(x_compatibility_date, opts)

```ruby
begin
  # Get effects
  data, status_code, headers = api_instance.get_dogma_effects_with_http_info(x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue ESI::ApiError => e
  puts "Error when calling DogmaApi->get_dogma_effects_with_http_info: #{e}"
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


## get_dogma_effects_effect_id

> <DogmaEffectsEffectIdGet> get_dogma_effects_effect_id(effect_id, x_compatibility_date, opts)

Get effect information

Get information on a dogma effect  This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby-esi'

api_instance = ESI::DogmaApi.new
effect_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get effect information
  result = api_instance.get_dogma_effects_effect_id(effect_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling DogmaApi->get_dogma_effects_effect_id: #{e}"
end
```

#### Using the get_dogma_effects_effect_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DogmaEffectsEffectIdGet>, Integer, Hash)> get_dogma_effects_effect_id_with_http_info(effect_id, x_compatibility_date, opts)

```ruby
begin
  # Get effect information
  data, status_code, headers = api_instance.get_dogma_effects_effect_id_with_http_info(effect_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DogmaEffectsEffectIdGet>
rescue ESI::ApiError => e
  puts "Error when calling DogmaApi->get_dogma_effects_effect_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **effect_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**DogmaEffectsEffectIdGet**](DogmaEffectsEffectIdGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

