require 'date'

module BancoBrasilClientCredentials
  class ResponseToken < BaseModel
    # Token de Acesso
    attr_accessor :access_token

    # Tipo de token
    attr_accessor :token_type

    # Tempo de Expiração do token
    attr_accessor :expires_in

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      { access_token: :access_token, token_type: :token_type, expires_in: :expires_in }
    end

    # Attribute type mapping.
    def self.openapi_types
      { access_token: :Object, token_type: :Object, expires_in: :Object }
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @access_token.nil?
        invalid_properties.push('invalid value for "access_token", access_token cannot be nil.')
      end

      if @token_type.nil?
        invalid_properties.push('invalid value for "token_type", token_type cannot be nil.')
      end

      if @expires_in.nil?
        invalid_properties.push('invalid value for "expires_in", expires_in cannot be nil.')
      end

      invalid_properties
    end
  end
end
