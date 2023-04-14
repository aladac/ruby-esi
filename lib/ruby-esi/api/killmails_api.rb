=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 1.17

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.42
=end

module ESI
  class KillmailsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a character's recent kills and losses
    # Return a list of a character's kills and losses going back 90 days  --- Alternate route: `/dev/characters/{character_id}/killmails/recent/`  Alternate route: `/legacy/characters/{character_id}/killmails/recent/`  Alternate route: `/v1/characters/{character_id}/killmails/recent/`  --- This route is cached for up to 300 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return (default to 1)
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<GetCharactersCharacterIdKillmailsRecent200Ok>]
    def get_characters_character_id_killmails_recent(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_killmails_recent_with_http_info(character_id, opts)
      data
    end

    # Get a character&#x27;s recent kills and losses
    # Return a list of a character&#x27;s kills and losses going back 90 days  --- Alternate route: &#x60;/dev/characters/{character_id}/killmails/recent/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/killmails/recent/&#x60;  Alternate route: &#x60;/v1/characters/{character_id}/killmails/recent/&#x60;  --- This route is cached for up to 300 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(Array<GetCharactersCharacterIdKillmailsRecent200Ok>, Integer, Hash)>] Array<GetCharactersCharacterIdKillmailsRecent200Ok> data, response status code and response headers
    def get_characters_character_id_killmails_recent_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KillmailsApi.get_characters_character_id_killmails_recent ...'
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling KillmailsApi.get_characters_character_id_killmails_recent"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility'
      end
      # resource path
      local_var_path = '/characters/{character_id}/killmails/recent/'.sub('{' + 'character_id' + '}', character_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Array<GetCharactersCharacterIdKillmailsRecent200Ok>' 

      auth_names = opts[:auth_names] || ['evesso']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KillmailsApi#get_characters_character_id_killmails_recent\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a corporation's recent kills and losses
    # Get a list of a corporation's kills and losses going back 90 days  --- Alternate route: `/dev/corporations/{corporation_id}/killmails/recent/`  Alternate route: `/legacy/corporations/{corporation_id}/killmails/recent/`  Alternate route: `/v1/corporations/{corporation_id}/killmails/recent/`  --- This route is cached for up to 300 seconds  --- Requires one of the following EVE corporation role(s): Director 
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return (default to 1)
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<GetCorporationsCorporationIdKillmailsRecent200Ok>]
    def get_corporations_corporation_id_killmails_recent(corporation_id, opts = {})
      data, _status_code, _headers = get_corporations_corporation_id_killmails_recent_with_http_info(corporation_id, opts)
      data
    end

    # Get a corporation&#x27;s recent kills and losses
    # Get a list of a corporation&#x27;s kills and losses going back 90 days  --- Alternate route: &#x60;/dev/corporations/{corporation_id}/killmails/recent/&#x60;  Alternate route: &#x60;/legacy/corporations/{corporation_id}/killmails/recent/&#x60;  Alternate route: &#x60;/v1/corporations/{corporation_id}/killmails/recent/&#x60;  --- This route is cached for up to 300 seconds  --- Requires one of the following EVE corporation role(s): Director 
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(Array<GetCorporationsCorporationIdKillmailsRecent200Ok>, Integer, Hash)>] Array<GetCorporationsCorporationIdKillmailsRecent200Ok> data, response status code and response headers
    def get_corporations_corporation_id_killmails_recent_with_http_info(corporation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KillmailsApi.get_corporations_corporation_id_killmails_recent ...'
      end
      # verify the required parameter 'corporation_id' is set
      if @api_client.config.client_side_validation && corporation_id.nil?
        fail ArgumentError, "Missing the required parameter 'corporation_id' when calling KillmailsApi.get_corporations_corporation_id_killmails_recent"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility'
      end
      # resource path
      local_var_path = '/corporations/{corporation_id}/killmails/recent/'.sub('{' + 'corporation_id' + '}', corporation_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Array<GetCorporationsCorporationIdKillmailsRecent200Ok>' 

      auth_names = opts[:auth_names] || ['evesso']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KillmailsApi#get_corporations_corporation_id_killmails_recent\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a single killmail
    # Return a single killmail from its ID and hash  --- Alternate route: `/dev/killmails/{killmail_id}/{killmail_hash}/`  Alternate route: `/legacy/killmails/{killmail_id}/{killmail_hash}/`  Alternate route: `/v1/killmails/{killmail_id}/{killmail_hash}/`  --- This route is cached for up to 30758400 seconds
    # @param killmail_hash The killmail hash for verification
    # @param killmail_id The killmail ID to be queried
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [GetKillmailsKillmailIdKillmailHashOk]
    def get_killmails_killmail_id_killmail_hash(killmail_hash, killmail_id, opts = {})
      data, _status_code, _headers = get_killmails_killmail_id_killmail_hash_with_http_info(killmail_hash, killmail_id, opts)
      data
    end

    # Get a single killmail
    # Return a single killmail from its ID and hash  --- Alternate route: &#x60;/dev/killmails/{killmail_id}/{killmail_hash}/&#x60;  Alternate route: &#x60;/legacy/killmails/{killmail_id}/{killmail_hash}/&#x60;  Alternate route: &#x60;/v1/killmails/{killmail_id}/{killmail_hash}/&#x60;  --- This route is cached for up to 30758400 seconds
    # @param killmail_hash The killmail hash for verification
    # @param killmail_id The killmail ID to be queried
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [Array<(GetKillmailsKillmailIdKillmailHashOk, Integer, Hash)>] GetKillmailsKillmailIdKillmailHashOk data, response status code and response headers
    def get_killmails_killmail_id_killmail_hash_with_http_info(killmail_hash, killmail_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KillmailsApi.get_killmails_killmail_id_killmail_hash ...'
      end
      # verify the required parameter 'killmail_hash' is set
      if @api_client.config.client_side_validation && killmail_hash.nil?
        fail ArgumentError, "Missing the required parameter 'killmail_hash' when calling KillmailsApi.get_killmails_killmail_id_killmail_hash"
      end
      # verify the required parameter 'killmail_id' is set
      if @api_client.config.client_side_validation && killmail_id.nil?
        fail ArgumentError, "Missing the required parameter 'killmail_id' when calling KillmailsApi.get_killmails_killmail_id_killmail_hash"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility'
      end
      # resource path
      local_var_path = '/killmails/{killmail_id}/{killmail_hash}/'.sub('{' + 'killmail_hash' + '}', killmail_hash.to_s).sub('{' + 'killmail_id' + '}', killmail_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'GetKillmailsKillmailIdKillmailHashOk' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KillmailsApi#get_killmails_killmail_id_killmail_hash\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
