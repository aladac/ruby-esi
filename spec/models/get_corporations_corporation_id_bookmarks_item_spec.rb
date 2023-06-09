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

# Unit tests for ESI::GetCorporationsCorporationIdBookmarksItem
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetCorporationsCorporationIdBookmarksItem' do
  before do
    # run before each test
    @instance = ESI::GetCorporationsCorporationIdBookmarksItem.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetCorporationsCorporationIdBookmarksItem' do
    it 'should create an instance of GetCorporationsCorporationIdBookmarksItem' do
      expect(@instance).to be_instance_of(ESI::GetCorporationsCorporationIdBookmarksItem)
    end
  end
  describe 'test attribute "item_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
