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

# Unit tests for ESI::GetCharactersCharacterIdAssets200Ok
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetCharactersCharacterIdAssets200Ok' do
  before do
    # run before each test
    @instance = ESI::GetCharactersCharacterIdAssets200Ok.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetCharactersCharacterIdAssets200Ok' do
    it 'should create an instance of GetCharactersCharacterIdAssets200Ok' do
      expect(@instance).to be_instance_of(ESI::GetCharactersCharacterIdAssets200Ok)
    end
  end
  describe 'test attribute "is_blueprint_copy"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "is_singleton"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "item_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "location_flag"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["AssetSafety", "AutoFit", "BoosterBay", "Cargo", "CorpseBay", "Deliveries", "DroneBay", "FighterBay", "FighterTube0", "FighterTube1", "FighterTube2", "FighterTube3", "FighterTube4", "FleetHangar", "FrigateEscapeBay", "Hangar", "HangarAll", "HiSlot0", "HiSlot1", "HiSlot2", "HiSlot3", "HiSlot4", "HiSlot5", "HiSlot6", "HiSlot7", "HiddenModifiers", "Implant", "LoSlot0", "LoSlot1", "LoSlot2", "LoSlot3", "LoSlot4", "LoSlot5", "LoSlot6", "LoSlot7", "Locked", "MedSlot0", "MedSlot1", "MedSlot2", "MedSlot3", "MedSlot4", "MedSlot5", "MedSlot6", "MedSlot7", "QuafeBay", "RigSlot0", "RigSlot1", "RigSlot2", "RigSlot3", "RigSlot4", "RigSlot5", "RigSlot6", "RigSlot7", "ShipHangar", "Skill", "SpecializedAmmoHold", "SpecializedAsteroidHold", "SpecializedCommandCenterHold", "SpecializedFuelBay", "SpecializedGasHold", "SpecializedIceHold", "SpecializedIndustrialShipHold", "SpecializedLargeShipHold", "SpecializedMaterialBay", "SpecializedMediumShipHold", "SpecializedMineralHold", "SpecializedOreHold", "SpecializedPlanetaryCommoditiesHold", "SpecializedSalvageHold", "SpecializedShipHold", "SpecializedSmallShipHold", "StructureDeedBay", "SubSystemBay", "SubSystemSlot0", "SubSystemSlot1", "SubSystemSlot2", "SubSystemSlot3", "SubSystemSlot4", "SubSystemSlot5", "SubSystemSlot6", "SubSystemSlot7", "Unlocked", "Wardrobe"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.location_flag = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "location_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "location_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["station", "solar_system", "item", "other"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.location_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "quantity"' do
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
