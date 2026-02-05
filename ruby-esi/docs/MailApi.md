# ESI::MailApi

All URIs are relative to *https://esi.evetech.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_characters_character_id_mail_labels_label_id**](MailApi.md#delete_characters_character_id_mail_labels_label_id) | **DELETE** /characters/{character_id}/mail/labels/{label_id} | Delete a mail label |
| [**delete_characters_character_id_mail_mail_id**](MailApi.md#delete_characters_character_id_mail_mail_id) | **DELETE** /characters/{character_id}/mail/{mail_id} | Delete a mail |
| [**get_characters_character_id_mail**](MailApi.md#get_characters_character_id_mail) | **GET** /characters/{character_id}/mail | Return mail headers |
| [**get_characters_character_id_mail_labels**](MailApi.md#get_characters_character_id_mail_labels) | **GET** /characters/{character_id}/mail/labels | Get mail labels and unread counts |
| [**get_characters_character_id_mail_lists**](MailApi.md#get_characters_character_id_mail_lists) | **GET** /characters/{character_id}/mail/lists | Return mailing list subscriptions |
| [**get_characters_character_id_mail_mail_id**](MailApi.md#get_characters_character_id_mail_mail_id) | **GET** /characters/{character_id}/mail/{mail_id} | Return a mail |
| [**post_characters_character_id_mail**](MailApi.md#post_characters_character_id_mail) | **POST** /characters/{character_id}/mail | Send a new mail |
| [**post_characters_character_id_mail_labels**](MailApi.md#post_characters_character_id_mail_labels) | **POST** /characters/{character_id}/mail/labels | Create a mail label |
| [**put_characters_character_id_mail_mail_id**](MailApi.md#put_characters_character_id_mail_mail_id) | **PUT** /characters/{character_id}/mail/{mail_id} | Update metadata about a mail |


## delete_characters_character_id_mail_labels_label_id

> delete_characters_character_id_mail_labels_label_id(character_id, label_id, x_compatibility_date, opts)

Delete a mail label

Delete a mail label

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::MailApi.new
character_id = 789 # Integer | The ID of the character
label_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Delete a mail label
  api_instance.delete_characters_character_id_mail_labels_label_id(character_id, label_id, x_compatibility_date, opts)
rescue ESI::ApiError => e
  puts "Error when calling MailApi->delete_characters_character_id_mail_labels_label_id: #{e}"
end
```

#### Using the delete_characters_character_id_mail_labels_label_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_characters_character_id_mail_labels_label_id_with_http_info(character_id, label_id, x_compatibility_date, opts)

```ruby
begin
  # Delete a mail label
  data, status_code, headers = api_instance.delete_characters_character_id_mail_labels_label_id_with_http_info(character_id, label_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ESI::ApiError => e
  puts "Error when calling MailApi->delete_characters_character_id_mail_labels_label_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **label_id** | **Integer** |  |  |
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


## delete_characters_character_id_mail_mail_id

> delete_characters_character_id_mail_mail_id(character_id, mail_id, x_compatibility_date, opts)

Delete a mail

Delete a mail

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::MailApi.new
character_id = 789 # Integer | The ID of the character
mail_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Delete a mail
  api_instance.delete_characters_character_id_mail_mail_id(character_id, mail_id, x_compatibility_date, opts)
rescue ESI::ApiError => e
  puts "Error when calling MailApi->delete_characters_character_id_mail_mail_id: #{e}"
end
```

#### Using the delete_characters_character_id_mail_mail_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_characters_character_id_mail_mail_id_with_http_info(character_id, mail_id, x_compatibility_date, opts)

```ruby
begin
  # Delete a mail
  data, status_code, headers = api_instance.delete_characters_character_id_mail_mail_id_with_http_info(character_id, mail_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ESI::ApiError => e
  puts "Error when calling MailApi->delete_characters_character_id_mail_mail_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **mail_id** | **Integer** |  |  |
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


## get_characters_character_id_mail

> <Array<CharactersCharacterIdMailGetInner>> get_characters_character_id_mail(character_id, x_compatibility_date, opts)

Return mail headers

Return the 50 most recent mail headers belonging to the character that match the query criteria. Queries can be filtered by label, and last_mail_id can be used to paginate backwards

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::MailApi.new
character_id = 789 # Integer | The ID of the character
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  labels: [3.56], # Array<Integer> | 
  last_mail_id: 789, # Integer | 
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Return mail headers
  result = api_instance.get_characters_character_id_mail(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling MailApi->get_characters_character_id_mail: #{e}"
end
```

#### Using the get_characters_character_id_mail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdMailGetInner>>, Integer, Hash)> get_characters_character_id_mail_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # Return mail headers
  data, status_code, headers = api_instance.get_characters_character_id_mail_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdMailGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling MailApi->get_characters_character_id_mail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **labels** | [**Array&lt;Integer&gt;**](Integer.md) |  | [optional] |
| **last_mail_id** | **Integer** |  | [optional] |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**Array&lt;CharactersCharacterIdMailGetInner&gt;**](CharactersCharacterIdMailGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_mail_labels

> <CharactersCharacterIdMailLabelsGet> get_characters_character_id_mail_labels(character_id, x_compatibility_date, opts)

Get mail labels and unread counts

Return a list of the users mail labels, unread counts for each label and a total unread count.

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::MailApi.new
character_id = 789 # Integer | The ID of the character
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Get mail labels and unread counts
  result = api_instance.get_characters_character_id_mail_labels(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling MailApi->get_characters_character_id_mail_labels: #{e}"
end
```

#### Using the get_characters_character_id_mail_labels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CharactersCharacterIdMailLabelsGet>, Integer, Hash)> get_characters_character_id_mail_labels_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # Get mail labels and unread counts
  data, status_code, headers = api_instance.get_characters_character_id_mail_labels_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CharactersCharacterIdMailLabelsGet>
rescue ESI::ApiError => e
  puts "Error when calling MailApi->get_characters_character_id_mail_labels_with_http_info: #{e}"
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

[**CharactersCharacterIdMailLabelsGet**](CharactersCharacterIdMailLabelsGet.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_mail_lists

> <Array<CharactersCharacterIdMailListsGetInner>> get_characters_character_id_mail_lists(character_id, x_compatibility_date, opts)

Return mailing list subscriptions

Return all mailing lists that the character is subscribed to

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::MailApi.new
character_id = 789 # Integer | The ID of the character
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Return mailing list subscriptions
  result = api_instance.get_characters_character_id_mail_lists(character_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling MailApi->get_characters_character_id_mail_lists: #{e}"
end
```

#### Using the get_characters_character_id_mail_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CharactersCharacterIdMailListsGetInner>>, Integer, Hash)> get_characters_character_id_mail_lists_with_http_info(character_id, x_compatibility_date, opts)

```ruby
begin
  # Return mailing list subscriptions
  data, status_code, headers = api_instance.get_characters_character_id_mail_lists_with_http_info(character_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CharactersCharacterIdMailListsGetInner>>
rescue ESI::ApiError => e
  puts "Error when calling MailApi->get_characters_character_id_mail_lists_with_http_info: #{e}"
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

[**Array&lt;CharactersCharacterIdMailListsGetInner&gt;**](CharactersCharacterIdMailListsGetInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_mail_mail_id

> <CharactersCharacterIdMailMailIdGet> get_characters_character_id_mail_mail_id(character_id, mail_id, x_compatibility_date, opts)

Return a mail

Return the contents of an EVE mail

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::MailApi.new
character_id = 789 # Integer | The ID of the character
mail_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Return a mail
  result = api_instance.get_characters_character_id_mail_mail_id(character_id, mail_id, x_compatibility_date, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling MailApi->get_characters_character_id_mail_mail_id: #{e}"
end
```

#### Using the get_characters_character_id_mail_mail_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CharactersCharacterIdMailMailIdGet>, Integer, Hash)> get_characters_character_id_mail_mail_id_with_http_info(character_id, mail_id, x_compatibility_date, opts)

```ruby
begin
  # Return a mail
  data, status_code, headers = api_instance.get_characters_character_id_mail_mail_id_with_http_info(character_id, mail_id, x_compatibility_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CharactersCharacterIdMailMailIdGet>
rescue ESI::ApiError => e
  puts "Error when calling MailApi->get_characters_character_id_mail_mail_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **mail_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

[**CharactersCharacterIdMailMailIdGet**](CharactersCharacterIdMailMailIdGet.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_characters_character_id_mail

> Integer post_characters_character_id_mail(character_id, x_compatibility_date, post_characters_character_id_mail_request, opts)

Send a new mail

Create and send a new mail

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::MailApi.new
character_id = 789 # Integer | The ID of the character
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
post_characters_character_id_mail_request = ESI::PostCharactersCharacterIdMailRequest.new({body: 'body_example', recipients: [ESI::PostCharactersCharacterIdMailRequestRecipientsInner.new({recipient_id: 3.56, recipient_type: 'alliance'})], subject: 'subject_example'}) # PostCharactersCharacterIdMailRequest | 
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Send a new mail
  result = api_instance.post_characters_character_id_mail(character_id, x_compatibility_date, post_characters_character_id_mail_request, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling MailApi->post_characters_character_id_mail: #{e}"
end
```

#### Using the post_characters_character_id_mail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> post_characters_character_id_mail_with_http_info(character_id, x_compatibility_date, post_characters_character_id_mail_request, opts)

```ruby
begin
  # Send a new mail
  data, status_code, headers = api_instance.post_characters_character_id_mail_with_http_info(character_id, x_compatibility_date, post_characters_character_id_mail_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue ESI::ApiError => e
  puts "Error when calling MailApi->post_characters_character_id_mail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **post_characters_character_id_mail_request** | [**PostCharactersCharacterIdMailRequest**](PostCharactersCharacterIdMailRequest.md) |  |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

**Integer**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_characters_character_id_mail_labels

> Integer post_characters_character_id_mail_labels(character_id, x_compatibility_date, post_characters_character_id_mail_labels_request, opts)

Create a mail label

Create a mail label

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::MailApi.new
character_id = 789 # Integer | The ID of the character
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
post_characters_character_id_mail_labels_request = ESI::PostCharactersCharacterIdMailLabelsRequest.new({name: 'name_example'}) # PostCharactersCharacterIdMailLabelsRequest | 
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Create a mail label
  result = api_instance.post_characters_character_id_mail_labels(character_id, x_compatibility_date, post_characters_character_id_mail_labels_request, opts)
  p result
rescue ESI::ApiError => e
  puts "Error when calling MailApi->post_characters_character_id_mail_labels: #{e}"
end
```

#### Using the post_characters_character_id_mail_labels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> post_characters_character_id_mail_labels_with_http_info(character_id, x_compatibility_date, post_characters_character_id_mail_labels_request, opts)

```ruby
begin
  # Create a mail label
  data, status_code, headers = api_instance.post_characters_character_id_mail_labels_with_http_info(character_id, x_compatibility_date, post_characters_character_id_mail_labels_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue ESI::ApiError => e
  puts "Error when calling MailApi->post_characters_character_id_mail_labels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **post_characters_character_id_mail_labels_request** | [**PostCharactersCharacterIdMailLabelsRequest**](PostCharactersCharacterIdMailLabelsRequest.md) |  |  |
| **accept_language** | **String** | The language to use for the response. | [optional][default to &#39;en&#39;] |
| **if_none_match** | **String** | The ETag of the previous request. A 304 will be returned if this matches the current ETag. | [optional] |
| **x_tenant** | **String** | The tenant ID for the request. | [optional][default to &#39;tranquility&#39;] |
| **if_modified_since** | **String** | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date. | [optional] |

### Return type

**Integer**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_characters_character_id_mail_mail_id

> put_characters_character_id_mail_mail_id(character_id, mail_id, x_compatibility_date, put_characters_character_id_mail_mail_id_request, opts)

Update metadata about a mail

Update metadata about a mail

### Examples

```ruby
require 'time'
require 'ruby-esi'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::MailApi.new
character_id = 789 # Integer | The ID of the character
mail_id = 789 # Integer | 
x_compatibility_date = Date.parse('2020-01-01') # Date | The compatibility date for the request.
put_characters_character_id_mail_mail_id_request = ESI::PutCharactersCharacterIdMailMailIdRequest.new # PutCharactersCharacterIdMailMailIdRequest | 
opts = {
  accept_language: 'en', # String | The language to use for the response.
  if_none_match: 'if_none_match_example', # String | The ETag of the previous request. A 304 will be returned if this matches the current ETag.
  x_tenant: 'x_tenant_example', # String | The tenant ID for the request.
  if_modified_since: 'if_modified_since_example' # String | The date the resource was last modified. A 304 will be returned if the resource has not been modified since this date.
}

begin
  # Update metadata about a mail
  api_instance.put_characters_character_id_mail_mail_id(character_id, mail_id, x_compatibility_date, put_characters_character_id_mail_mail_id_request, opts)
rescue ESI::ApiError => e
  puts "Error when calling MailApi->put_characters_character_id_mail_mail_id: #{e}"
end
```

#### Using the put_characters_character_id_mail_mail_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_characters_character_id_mail_mail_id_with_http_info(character_id, mail_id, x_compatibility_date, put_characters_character_id_mail_mail_id_request, opts)

```ruby
begin
  # Update metadata about a mail
  data, status_code, headers = api_instance.put_characters_character_id_mail_mail_id_with_http_info(character_id, mail_id, x_compatibility_date, put_characters_character_id_mail_mail_id_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ESI::ApiError => e
  puts "Error when calling MailApi->put_characters_character_id_mail_mail_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | The ID of the character |  |
| **mail_id** | **Integer** |  |  |
| **x_compatibility_date** | **Date** | The compatibility date for the request. |  |
| **put_characters_character_id_mail_mail_id_request** | [**PutCharactersCharacterIdMailMailIdRequest**](PutCharactersCharacterIdMailMailIdRequest.md) |  |  |
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

