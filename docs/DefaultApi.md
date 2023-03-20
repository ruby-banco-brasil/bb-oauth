# BancoBrasilClientCredentials::DefaultApi

All URIs are relative to *https://oauth.bb.com.br/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**oauth_token_post**](DefaultApi.md#oauth_token_post) | **POST** /oauth/token | 

# **oauth_token_post**
> ResponseToken oauth_token_post(grant_typescopeauthorizationcontent_type)



### Example
```ruby
# load the gem
require 'bb_oauth'

api_instance = BancoBrasilClientCredentials::DefaultApi.new
grant_type = 'grant_type_example' # String | 
scope = 'scope_example' # String | 
authorization = 'authorization_example' # String | Deverá ser informado no padrão: Basic {Base64(client_id:client_secret)}
content_type = 'content_type_example' # String | Deverá ser informado:  application/x-www-form-urlencoded 


begin
  result = api_instance.oauth_token_post(grant_typescopeauthorizationcontent_type)
  p result
rescue BancoBrasilClientCredentials::ApiError => e
  puts "Exception when calling DefaultApi->oauth_token_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant_type** | **String**|  | 
 **scope** | **String**|  | 
 **authorization** | **String**| Deverá ser informado no padrão: Basic {Base64(client_id:client_secret)} | 
 **content_type** | **String**| Deverá ser informado:  application/x-www-form-urlencoded  | 

### Return type

[**ResponseToken**](ResponseToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/x-www-form-urlencoded



