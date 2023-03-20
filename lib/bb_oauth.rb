# Common files
require 'bb_oauth/api_client'
require 'bb_oauth/api_error'
require 'bb_oauth/version'
require 'bb_oauth/configuration'

# Models
require 'bb_oauth/models/base_model'
require 'bb_oauth/models/body'
require 'bb_oauth/models/response_token'

# APIs
require 'bb_oauth/api/default_api'

module BancoBrasilClientCredentials
  class << self
    # Customize default settings for the SDK using block.
    #   BancoBrasilClientCredentials.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
