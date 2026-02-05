# ESI::UserInterfaceApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**post_ui_autopilot_waypoint**](UserInterfaceApi.md#post_ui_autopilot_waypoint) | **POST** /ui/autopilot/waypoint | Set Autopilot Waypoint |
| [**post_ui_openwindow_contract**](UserInterfaceApi.md#post_ui_openwindow_contract) | **POST** /ui/openwindow/contract | Open Contract Window |
| [**post_ui_openwindow_information**](UserInterfaceApi.md#post_ui_openwindow_information) | **POST** /ui/openwindow/information | Open Information Window |
| [**post_ui_openwindow_marketdetails**](UserInterfaceApi.md#post_ui_openwindow_marketdetails) | **POST** /ui/openwindow/marketdetails | Open Market Details |
| [**post_ui_openwindow_newmail**](UserInterfaceApi.md#post_ui_openwindow_newmail) | **POST** /ui/openwindow/newmail | Open New Mail Window |


## post_ui_autopilot_waypoint

> post_ui_autopilot_waypoint(add_to_beginning, clear_other_waypoints, destination_id, x_compatibility_date, opts)

Set Autopilot Waypoint

Set a solar system as autopilot waypoint

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::UserInterfaceApi.new
add_to_beginning = true # Boolean | 
clear_other_waypoints = true # Boolean | 
destination_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Set Autopilot Waypoint
  api_instance.post_ui_autopilot_waypoint(add_to_beginning, clear_other_waypoints, destination_id, x_compatibility_date, opts)
rescue ESI::ApiError => e
  puts "Error when calling UserInterfaceApi->post_ui_autopilot_waypoint: #{e}"
end
```

#### Using the post_ui_autopilot_waypoint_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_ui_autopilot_waypoint_with_http_info(add_to_beginning, clear_other_waypoints, destination_id, x_compatibility_date, opts)

```ruby
begin
  # Set Autopilot Waypoint
  data, status_code, headers = api_instance.post_ui_autopilot_waypoint_with_http_info(add_to_beginning, clear_other_waypoints, destination_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ESI::ApiError => e
  puts "Error when calling UserInterfaceApi->post_ui_autopilot_waypoint_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_to_beginning** | **Boolean** |  | [default to false] |
| **clear_other_waypoints** | **Boolean** |  | [default to false] |
| **destination_id** | **Integer** |  |  |
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


## post_ui_openwindow_contract

> post_ui_openwindow_contract(contract_id, x_compatibility_date, opts)

Open Contract Window

Open the contract window inside the client

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::UserInterfaceApi.new
contract_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Open Contract Window
  api_instance.post_ui_openwindow_contract(contract_id, x_compatibility_date, opts)
rescue ESI::ApiError => e
  puts "Error when calling UserInterfaceApi->post_ui_openwindow_contract: #{e}"
end
```

#### Using the post_ui_openwindow_contract_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_ui_openwindow_contract_with_http_info(contract_id, x_compatibility_date, opts)

```ruby
begin
  # Open Contract Window
  data, status_code, headers = api_instance.post_ui_openwindow_contract_with_http_info(contract_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ESI::ApiError => e
  puts "Error when calling UserInterfaceApi->post_ui_openwindow_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_id** | **Integer** |  |  |
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


## post_ui_openwindow_information

> post_ui_openwindow_information(target_id, x_compatibility_date, opts)

Open Information Window

Open the information window for a character, corporation or alliance inside the client

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::UserInterfaceApi.new
target_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Open Information Window
  api_instance.post_ui_openwindow_information(target_id, x_compatibility_date, opts)
rescue ESI::ApiError => e
  puts "Error when calling UserInterfaceApi->post_ui_openwindow_information: #{e}"
end
```

#### Using the post_ui_openwindow_information_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_ui_openwindow_information_with_http_info(target_id, x_compatibility_date, opts)

```ruby
begin
  # Open Information Window
  data, status_code, headers = api_instance.post_ui_openwindow_information_with_http_info(target_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ESI::ApiError => e
  puts "Error when calling UserInterfaceApi->post_ui_openwindow_information_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target_id** | **Integer** |  |  |
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


## post_ui_openwindow_marketdetails

> post_ui_openwindow_marketdetails(type_id, x_compatibility_date, opts)

Open Market Details

Open the market details window for a specific typeID inside the client

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::UserInterfaceApi.new
type_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Open Market Details
  api_instance.post_ui_openwindow_marketdetails(type_id, x_compatibility_date, opts)
rescue ESI::ApiError => e
  puts "Error when calling UserInterfaceApi->post_ui_openwindow_marketdetails: #{e}"
end
```

#### Using the post_ui_openwindow_marketdetails_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_ui_openwindow_marketdetails_with_http_info(type_id, x_compatibility_date, opts)

```ruby
begin
  # Open Market Details
  data, status_code, headers = api_instance.post_ui_openwindow_marketdetails_with_http_info(type_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ESI::ApiError => e
  puts "Error when calling UserInterfaceApi->post_ui_openwindow_marketdetails_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_ui_openwindow_newmail

> post_ui_openwindow_newmail(x_compatibility_date, post_ui_openwindow_newmail_request, opts)

Open New Mail Window

Open the New Mail window, according to settings from the request if applicable

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::UserInterfaceApi.new
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
post_ui_openwindow_newmail_request = ESI::PostUiOpenwindowNewmailRequest.new({body: 'body_example', recipients: [3.56], subject: 'subject_example'}) # PostUiOpenwindowNewmailRequest | 
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Open New Mail Window
  api_instance.post_ui_openwindow_newmail(x_compatibility_date, post_ui_openwindow_newmail_request, opts)
rescue ESI::ApiError => e
  puts "Error when calling UserInterfaceApi->post_ui_openwindow_newmail: #{e}"
end
```

#### Using the post_ui_openwindow_newmail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_ui_openwindow_newmail_with_http_info(x_compatibility_date, post_ui_openwindow_newmail_request, opts)

```ruby
begin
  # Open New Mail Window
  data, status_code, headers = api_instance.post_ui_openwindow_newmail_with_http_info(x_compatibility_date, post_ui_openwindow_newmail_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ESI::ApiError => e
  puts "Error when calling UserInterfaceApi->post_ui_openwindow_newmail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **post_ui_openwindow_newmail_request** | [**PostUiOpenwindowNewmailRequest**](PostUiOpenwindowNewmailRequest.md) |  |  |
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

