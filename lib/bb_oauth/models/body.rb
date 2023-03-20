require 'date'

module BancoBrasilClientCredentials
  class Body < BaseModel
    # Deverá ser informado: client_credentials
    attr_accessor :grant_type

    # Os escopos deverão ser informados separados por espaço.
    attr_accessor :scope

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      { grant_type: :grant_type, scope: :scope }
    end

    # Attribute type mapping.
    def self.openapi_types
      { grant_type: :Object, scope: :Object }
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @grant_type.nil?
        invalid_properties.push('invalid value for "grant_type", grant_type cannot be nil.')
      end

      if @scope.nil?
        invalid_properties.push('invalid value for "scope", scope cannot be nil.')
      end

      invalid_properties
    end
  end
end
