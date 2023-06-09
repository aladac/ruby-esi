=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 1.17

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.42
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ESI::PostCharactersCharacterIdFittingsCreated
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PostCharactersCharacterIdFittingsCreated' do
  before do
    # run before each test
    @instance = ESI::PostCharactersCharacterIdFittingsCreated.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PostCharactersCharacterIdFittingsCreated' do
    it 'should create an instance of PostCharactersCharacterIdFittingsCreated' do
      expect(@instance).to be_instance_of(ESI::PostCharactersCharacterIdFittingsCreated)
    end
  end
  describe 'test attribute "fitting_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
