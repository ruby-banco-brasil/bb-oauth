# bb_oauth

Unofficial Banco do Brasil OAuth Gem 

BancoBrasilClientCredentials - the Ruby gem for the Fluxo Client Credentials

- API version: 1.0.0
- Package version: 1.0.0

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build bb_oauth.gemspec
```

Then either install the gem locally:

```shell
gem install ./bb_oauth-1.0.0.gem
```
(for development, run `gem install --dev ./bb_oauth-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'bb_oauth', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'bb_oauth', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'bb_oauth'

api_instance = BancoBrasilClientCredentials::DefaultApi.new
grant_type = 'grant_type_example' # String | 
scope = 'scope_example' # String | 
authorization = 'authorization_example' # String | Deverá ser informado no padrão: Basic {Base64(client_id:client_secret)}
content_type = 'content_type_example' # String | Deverá ser informado:  application/x-www-form-urlencoded 


begin
  result = api_instance.oauth_token_post(grant_type, scope, authorization, content_type)
  p result
rescue BancoBrasilClientCredentials::ApiError => e
  puts "Exception when calling DefaultApi->oauth_token_post: #{e}"
end
```

## Documentation for API Endpoints

All URIs are relative to *https://oauth.bb.com.br/*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BancoBrasilClientCredentials::DefaultApi* | [**oauth_token_post**](docs/DefaultApi.md#oauth_token_post) | **POST** /oauth/token | 

## Documentation for Models

 - [BancoBrasilClientCredentials::Body](docs/Body.md)
 - [BancoBrasilClientCredentials::ResponseToken](docs/ResponseToken.md)

## Documentation for Authorization

 All endpoints do not require authorization.

