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

# Unit tests for ESI::GetCharactersCharacterIdMailMailIdRecipient
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetCharactersCharacterIdMailMailIdRecipient' do
  before do
    # run before each test
    @instance = ESI::GetCharactersCharacterIdMailMailIdRecipient.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetCharactersCharacterIdMailMailIdRecipient' do
    it 'should create an instance of GetCharactersCharacterIdMailMailIdRecipient' do
      expect(@instance).to be_instance_of(ESI::GetCharactersCharacterIdMailMailIdRecipient)
    end
  end
  describe 'test attribute "recipient_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "recipient_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["alliance", "character", "corporation", "mailing_list"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.recipient_type = value }.not_to raise_error
      # end
    end
  end

end