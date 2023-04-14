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

# Unit tests for ESI::GetUniverseTypesTypeIdDogmaEffect
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetUniverseTypesTypeIdDogmaEffect' do
  before do
    # run before each test
    @instance = ESI::GetUniverseTypesTypeIdDogmaEffect.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetUniverseTypesTypeIdDogmaEffect' do
    it 'should create an instance of GetUniverseTypesTypeIdDogmaEffect' do
      expect(@instance).to be_instance_of(ESI::GetUniverseTypesTypeIdDogmaEffect)
    end
  end
  describe 'test attribute "effect_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "is_default"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
