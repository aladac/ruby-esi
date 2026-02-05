# ESI::CalendarApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_calendar**](CalendarApi.md#get_characters_character_id_calendar) | **GET** /characters/{character_id}/calendar | List calendar event summaries |
| [**get_characters_character_id_calendar_event_id**](CalendarApi.md#get_characters_character_id_calendar_event_id) | **GET** /characters/{character_id}/calendar/{event_id} | Get an event |
| [**get_characters_character_id_calendar_event_id_attendees**](CalendarApi.md#get_characters_character_id_calendar_event_id_attendees) | **GET** /characters/{character_id}/calendar/{event_id}/attendees | Get attendees |
| [**put_characters_character_id_calendar_event_id**](CalendarApi.md#put_characters_character_id_calendar_event_id) | **PUT** /characters/{character_id}/calendar/{event_id} | Respond to an event |


## get_characters_character_id_calendar

> <Array<CharactersCharacterIdCalendarGetInner>> get_characters_character_id_calendar(character_id, x_compatibility_date, opts)

List calendar event summaries

Get 50 event summaries from the calendar. If no from_event ID is given, the resource will return the next 50 chronological event summaries from now. If a from_event ID is specified, it will return the next 50 chronological event summaries from after that event

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::CalendarApi.new
character_id = 789 # Integer | The ID of the character
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  from_event: 789, # Integer | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # List calendar event summaries
  result = api_instance.get_characters_character_id_calendar(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CalendarApi->get_characters_character_id_calendar: #{e}"
end
```

#### Using the get_characters_character_id_calendar_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdCalendarGetInner>>, Integer, Hash)> get_characters_character_id_calendar_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # List calendar event summaries
  data, status_code, headers = api_instance.get_characters_character_id_calendar_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdCalendarGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling CalendarApi->get_characters_character_id_calendar_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **from_event** | **Integer** |  | [optional] |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;CharactersCharacterIdCalendarGetInner&gt;**](CharactersCharacterIdCalendarGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_calendar_event_id

> <CharactersCharacterIdCalendarEventIdGet> get_characters_character_id_calendar_event_id(character_id, event_id, x_compatibility_date, opts)

Get an event

Get all the information for a specific event

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::CalendarApi.new
character_id = 789 # Integer | The ID of the character
event_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get an event
  result = api_instance.get_characters_character_id_calendar_event_id(character_id, event_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CalendarApi->get_characters_character_id_calendar_event_id: #{e}"
end
```

#### Using the get_characters_character_id_calendar_event_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CharactersCharacterIdCalendarEventIdGet>, Integer, Hash)> get_characters_character_id_calendar_event_id_with_http_info(character_id, event_id, x_compatibility_date, opts)

```ruby
begin
  # Get an event
  data, status_code, headers = api_instance.get_characters_character_id_calendar_event_id_with_http_info(character_id, event_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CharactersCharacterIdCalendarEventIdGet>
rescue ESI::ApiError => e
  puts "Error when calling CalendarApi->get_characters_character_id_calendar_event_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **event_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**CharactersCharacterIdCalendarEventIdGet**](CharactersCharacterIdCalendarEventIdGet.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_calendar_event_id_attendees

> <Array<CharactersCharacterIdCalendarEventIdAttendeesGetInner>> get_characters_character_id_calendar_event_id_attendees(character_id, event_id, x_compatibility_date, opts)

Get attendees

Get all invited attendees for a given event

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::CalendarApi.new
character_id = 789 # Integer | The ID of the character
event_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get attendees
  result = api_instance.get_characters_character_id_calendar_event_id_attendees(character_id, event_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling CalendarApi->get_characters_character_id_calendar_event_id_attendees: #{e}"
end
```

#### Using the get_characters_character_id_calendar_event_id_attendees_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdCalendarEventIdAttendeesGetInner>>, Integer, Hash)> get_characters_character_id_calendar_event_id_attendees_with_http_info(character_id, event_id, x_compatibility_date, opts)

```ruby
begin
  # Get attendees
  data, status_code, headers = api_instance.get_characters_character_id_calendar_event_id_attendees_with_http_info(character_id, event_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdCalendarEventIdAttendeesGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling CalendarApi->get_characters_character_id_calendar_event_id_attendees_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **event_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;CharactersCharacterIdCalendarEventIdAttendeesGetInner&gt;**](CharactersCharacterIdCalendarEventIdAttendeesGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_characters_character_id_calendar_event_id

> put_characters_character_id_calendar_event_id(character_id, event_id, x_compatibility_date, put_characters_character_id_calendar_event_id_request, opts)

Respond to an event

Set your response status to an event

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::CalendarApi.new
character_id = 789 # Integer | The ID of the character
event_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
put_characters_character_id_calendar_event_id_request = ESI::PutCharactersCharacterIdCalendarEventIdRequest.new({response: 'accepted'}) # PutCharactersCharacterIdCalendarEventIdRequest | 
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Respond to an event
  api_instance.put_characters_character_id_calendar_event_id(character_id, event_id, x_compatibility_date, put_characters_character_id_calendar_event_id_request, opts)
rescue ESI::ApiError => e
  puts "Error when calling CalendarApi->put_characters_character_id_calendar_event_id: #{e}"
end
```

#### Using the put_characters_character_id_calendar_event_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_characters_character_id_calendar_event_id_with_http_info(character_id, event_id, x_compatibility_date, put_characters_character_id_calendar_event_id_request, opts)

```ruby
begin
  # Respond to an event
  data, status_code, headers = api_instance.put_characters_character_id_calendar_event_id_with_http_info(character_id, event_id, x_compatibility_date, put_characters_character_id_calendar_event_id_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ESI::ApiError => e
  puts "Error when calling CalendarApi->put_characters_character_id_calendar_event_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **event_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **put_characters_character_id_calendar_event_id_request** | [**PutCharactersCharacterIdCalendarEventIdRequest**](PutCharactersCharacterIdCalendarEventIdRequest.md) |  |  |
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

