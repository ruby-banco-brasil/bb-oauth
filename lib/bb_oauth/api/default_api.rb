module BancoBrasilClientCredentials
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # @param grant_type
    # @param scope
    # @param authorization Deverá ser informado no padrão: Basic {Base64(client_id:client_secret)}
    # @param content_type Deverá ser informado:  application/x-www-form-urlencoded
    # @param [Hash] opts the optional parameters
    # @return [ResponseToken]
    def oauth_token_post(grant_type, scope, authorization, content_type, opts = {})
      data, _status_code, _headers = oauth_token_post_with_http_info(grant_type, scope, authorization, content_type, opts)
      data
    end

    # @param grant_type
    # @param scope
    # @param authorization Deverá ser informado no padrão: Basic {Base64(client_id:client_secret)}
    # @param content_type Deverá ser informado:  application/x-www-form-urlencoded
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResponseToken, Integer, Hash)>] ResponseToken data, response status code and response headers
    def oauth_token_post_with_http_info(grant_type, scope, authorization, content_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.oauth_token_post ...'
      end
      # verify the required parameter 'grant_type' is set
      if @api_client.config.client_side_validation && grant_type.nil?
        fail ArgumentError, "Missing the required parameter 'grant_type' when calling DefaultApi.oauth_token_post"
      end
      # verify the required parameter 'scope' is set
      if @api_client.config.client_side_validation && scope.nil?
        fail ArgumentError, "Missing the required parameter 'scope' when calling DefaultApi.oauth_token_post"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling DefaultApi.oauth_token_post"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling DefaultApi.oauth_token_post"
      end
      # resource path
      local_var_path = '/oauth/token'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      # header_params['Accept'] = @api_client.select_header_accept(['application/x-www-form-urlencoded'])
      # HTTP header 'Content-Type'
      # header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      header_params['Authorization'] = authorization
      header_params['Content-Type'] = content_type

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['grant_type'] = grant_type
      form_params['scope'] = scope

      # http body (model)
      post_body = opts[:body]

      return_type = opts[:return_type] || 'ResponseToken'

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#oauth_token_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
