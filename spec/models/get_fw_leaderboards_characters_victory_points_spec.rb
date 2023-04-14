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

# Unit tests for ESI::GetFwLeaderboardsCharactersVictoryPoints
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetFwLeaderboardsCharactersVictoryPoints' do
  before do
    # run before each test
    @instance = ESI::GetFwLeaderboardsCharactersVictoryPoints.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetFwLeaderboardsCharactersVictoryPoints' do
    it 'should create an instance of GetFwLeaderboardsCharactersVictoryPoints' do
      expect(@instance).to be_instance_of(ESI::GetFwLeaderboardsCharactersVictoryPoints)
    end
  end
  describe 'test attribute "active_total"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "last_week"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "yesterday"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
