=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 1.17

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.42
=end

require 'spec_helper'
require 'json'

# Unit tests for ESI::ContractsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ContractsApi' do
  before do
    # run before each test
    @instance = ESI::ContractsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContractsApi' do
    it 'should create an instance of ContractsApi' do
      expect(@instance).to be_instance_of(ESI::ContractsApi)
    end
  end

  # unit tests for get_characters_character_id_contracts
  # Get contracts
  # Returns contracts available to a character, only if the character is issuer, acceptor or assignee. Only returns contracts no older than 30 days, or if the status is \&quot;in_progress\&quot;.  --- Alternate route: &#x60;/dev/characters/{character_id}/contracts/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/contracts/&#x60;  Alternate route: &#x60;/v1/characters/{character_id}/contracts/&#x60;  --- This route is cached for up to 300 seconds
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
  # @option opts [Integer] :page Which page of results to return
  # @option opts [String] :token Access token to use if unable to set a header
  # @return [Array<GetCharactersCharacterIdContracts200Ok>]
  describe 'get_characters_character_id_contracts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_characters_character_id_contracts_contract_id_bids
  # Get contract bids
  # Lists bids on a particular auction contract  --- Alternate route: &#x60;/dev/characters/{character_id}/contracts/{contract_id}/bids/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/contracts/{contract_id}/bids/&#x60;  Alternate route: &#x60;/v1/characters/{character_id}/contracts/{contract_id}/bids/&#x60;  --- This route is cached for up to 300 seconds
  # @param character_id An EVE character ID
  # @param contract_id ID of a contract
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
  # @option opts [String] :token Access token to use if unable to set a header
  # @return [Array<GetCharactersCharacterIdContractsContractIdBids200Ok>]
  describe 'get_characters_character_id_contracts_contract_id_bids test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_characters_character_id_contracts_contract_id_items
  # Get contract items
  # Lists items of a particular contract  --- Alternate route: &#x60;/dev/characters/{character_id}/contracts/{contract_id}/items/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/contracts/{contract_id}/items/&#x60;  Alternate route: &#x60;/v1/characters/{character_id}/contracts/{contract_id}/items/&#x60;  --- This route is cached for up to 3600 seconds
  # @param character_id An EVE character ID
  # @param contract_id ID of a contract
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
  # @option opts [String] :token Access token to use if unable to set a header
  # @return [Array<GetCharactersCharacterIdContractsContractIdItems200Ok>]
  describe 'get_characters_character_id_contracts_contract_id_items test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_contracts_public_bids_contract_id
  # Get public contract bids
  # Lists bids on a public auction contract  --- Alternate route: &#x60;/dev/contracts/public/bids/{contract_id}/&#x60;  Alternate route: &#x60;/legacy/contracts/public/bids/{contract_id}/&#x60;  Alternate route: &#x60;/v1/contracts/public/bids/{contract_id}/&#x60;  --- This route is cached for up to 300 seconds
  # @param contract_id ID of a contract
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
  # @option opts [Integer] :page Which page of results to return
  # @return [Array<GetContractsPublicBidsContractId200Ok>]
  describe 'get_contracts_public_bids_contract_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_contracts_public_items_contract_id
  # Get public contract items
  # Lists items of a public contract  --- Alternate route: &#x60;/dev/contracts/public/items/{contract_id}/&#x60;  Alternate route: &#x60;/legacy/contracts/public/items/{contract_id}/&#x60;  Alternate route: &#x60;/v1/contracts/public/items/{contract_id}/&#x60;  --- This route is cached for up to 3600 seconds
  # @param contract_id ID of a contract
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
  # @option opts [Integer] :page Which page of results to return
  # @return [Array<GetContractsPublicItemsContractId200Ok>]
  describe 'get_contracts_public_items_contract_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_contracts_public_region_id
  # Get public contracts
  # Returns a paginated list of all public contracts in the given region  --- Alternate route: &#x60;/dev/contracts/public/{region_id}/&#x60;  Alternate route: &#x60;/legacy/contracts/public/{region_id}/&#x60;  Alternate route: &#x60;/v1/contracts/public/{region_id}/&#x60;  --- This route is cached for up to 1800 seconds
  # @param region_id An EVE region id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
  # @option opts [Integer] :page Which page of results to return
  # @return [Array<GetContractsPublicRegionId200Ok>]
  describe 'get_contracts_public_region_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_corporations_corporation_id_contracts
  # Get corporation contracts
  # Returns contracts available to a corporation, only if the corporation is issuer, acceptor or assignee. Only returns contracts no older than 30 days, or if the status is \&quot;in_progress\&quot;.  --- Alternate route: &#x60;/dev/corporations/{corporation_id}/contracts/&#x60;  Alternate route: &#x60;/legacy/corporations/{corporation_id}/contracts/&#x60;  Alternate route: &#x60;/v1/corporations/{corporation_id}/contracts/&#x60;  --- This route is cached for up to 300 seconds
  # @param corporation_id An EVE corporation ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
  # @option opts [Integer] :page Which page of results to return
  # @option opts [String] :token Access token to use if unable to set a header
  # @return [Array<GetCorporationsCorporationIdContracts200Ok>]
  describe 'get_corporations_corporation_id_contracts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_corporations_corporation_id_contracts_contract_id_bids
  # Get corporation contract bids
  # Lists bids on a particular auction contract  --- Alternate route: &#x60;/dev/corporations/{corporation_id}/contracts/{contract_id}/bids/&#x60;  Alternate route: &#x60;/legacy/corporations/{corporation_id}/contracts/{contract_id}/bids/&#x60;  Alternate route: &#x60;/v1/corporations/{corporation_id}/contracts/{contract_id}/bids/&#x60;  --- This route is cached for up to 3600 seconds
  # @param contract_id ID of a contract
  # @param corporation_id An EVE corporation ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
  # @option opts [Integer] :page Which page of results to return
  # @option opts [String] :token Access token to use if unable to set a header
  # @return [Array<GetCorporationsCorporationIdContractsContractIdBids200Ok>]
  describe 'get_corporations_corporation_id_contracts_contract_id_bids test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_corporations_corporation_id_contracts_contract_id_items
  # Get corporation contract items
  # Lists items of a particular contract  --- Alternate route: &#x60;/dev/corporations/{corporation_id}/contracts/{contract_id}/items/&#x60;  Alternate route: &#x60;/legacy/corporations/{corporation_id}/contracts/{contract_id}/items/&#x60;  Alternate route: &#x60;/v1/corporations/{corporation_id}/contracts/{contract_id}/items/&#x60;  --- This route is cached for up to 3600 seconds
  # @param contract_id ID of a contract
  # @param corporation_id An EVE corporation ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
  # @option opts [String] :token Access token to use if unable to set a header
  # @return [Array<GetCorporationsCorporationIdContractsContractIdItems200Ok>]
  describe 'get_corporations_corporation_id_contracts_contract_id_items test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
