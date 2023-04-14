=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 1.17

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.42
=end

require 'spec_helper'
require 'json'

# Unit tests for ESI::SkillsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SkillsApi' do
  before do
    # run before each test
    @instance = ESI::SkillsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SkillsApi' do
    it 'should create an instance of SkillsApi' do
      expect(@instance).to be_instance_of(ESI::SkillsApi)
    end
  end

  # unit tests for get_characters_character_id_attributes
  # Get character attributes
  # Return attributes of a character  --- Alternate route: &#x60;/dev/characters/{character_id}/attributes/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/attributes/&#x60;  Alternate route: &#x60;/v1/characters/{character_id}/attributes/&#x60;  --- This route is cached for up to 120 seconds
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
  # @option opts [String] :token Access token to use if unable to set a header
  # @return [GetCharactersCharacterIdAttributesOk]
  describe 'get_characters_character_id_attributes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_characters_character_id_skillqueue
  # Get character&#x27;s skill queue
  # List the configured skill queue for the given character  --- Alternate route: &#x60;/dev/characters/{character_id}/skillqueue/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/skillqueue/&#x60;  Alternate route: &#x60;/v2/characters/{character_id}/skillqueue/&#x60;  --- This route is cached for up to 120 seconds
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
  # @option opts [String] :token Access token to use if unable to set a header
  # @return [Array<GetCharactersCharacterIdSkillqueue200Ok>]
  describe 'get_characters_character_id_skillqueue test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_characters_character_id_skills
  # Get character skills
  # List all trained skills for the given character  --- Alternate route: &#x60;/dev/characters/{character_id}/skills/&#x60;  Alternate route: &#x60;/v4/characters/{character_id}/skills/&#x60;  --- This route is cached for up to 120 seconds
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
  # @option opts [String] :token Access token to use if unable to set a header
  # @return [GetCharactersCharacterIdSkillsOk]
  describe 'get_characters_character_id_skills test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
