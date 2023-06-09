=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 1.17

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.42
=end

require 'date'

module ESI
  # 200 ok object
  class GetCharactersCharacterIdWalletJournal200Ok
    # The amount of ISK given or taken from the wallet as a result of the given transaction. Positive when ISK is deposited into the wallet and negative when ISK is withdrawn
    attr_accessor :amount

    # Wallet balance after transaction occurred
    attr_accessor :balance

    # An ID that gives extra context to the particular transaction. Because of legacy reasons the context is completely different per ref_type and means different things. It is also possible to not have a context_id
    attr_accessor :context_id

    # The type of the given context_id if present
    attr_accessor :context_id_type

    # Date and time of transaction
    attr_accessor :date

    # The reason for the transaction, mirrors what is seen in the client
    attr_accessor :description

    # The id of the first party involved in the transaction. This attribute has no consistency and is different or non existant for particular ref_types. The description attribute will help make sense of what this attribute means. For more info about the given ID it can be dropped into the /universe/names/ ESI route to determine its type and name
    attr_accessor :first_party_id

    # Unique journal reference ID
    attr_accessor :id

    # The user stated reason for the transaction. Only applies to some ref_types
    attr_accessor :reason

    # \"The transaction type for the given. transaction. Different transaction types will populate different attributes.\"
    attr_accessor :ref_type

    # The id of the second party involved in the transaction. This attribute has no consistency and is different or non existant for particular ref_types. The description attribute will help make sense of what this attribute means. For more info about the given ID it can be dropped into the /universe/names/ ESI route to determine its type and name
    attr_accessor :second_party_id

    # Tax amount received. Only applies to tax related transactions
    attr_accessor :tax

    # The corporation ID receiving any tax paid. Only applies to tax related transactions
    attr_accessor :tax_receiver_id

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amount' => :'amount',
        :'balance' => :'balance',
        :'context_id' => :'context_id',
        :'context_id_type' => :'context_id_type',
        :'date' => :'date',
        :'description' => :'description',
        :'first_party_id' => :'first_party_id',
        :'id' => :'id',
        :'reason' => :'reason',
        :'ref_type' => :'ref_type',
        :'second_party_id' => :'second_party_id',
        :'tax' => :'tax',
        :'tax_receiver_id' => :'tax_receiver_id'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'amount' => :'Object',
        :'balance' => :'Object',
        :'context_id' => :'Object',
        :'context_id_type' => :'Object',
        :'date' => :'Object',
        :'description' => :'Object',
        :'first_party_id' => :'Object',
        :'id' => :'Object',
        :'reason' => :'Object',
        :'ref_type' => :'Object',
        :'second_party_id' => :'Object',
        :'tax' => :'Object',
        :'tax_receiver_id' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ESI::GetCharactersCharacterIdWalletJournal200Ok` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ESI::GetCharactersCharacterIdWalletJournal200Ok`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'balance')
        self.balance = attributes[:'balance']
      end

      if attributes.key?(:'context_id')
        self.context_id = attributes[:'context_id']
      end

      if attributes.key?(:'context_id_type')
        self.context_id_type = attributes[:'context_id_type']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'first_party_id')
        self.first_party_id = attributes[:'first_party_id']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'reason')
        self.reason = attributes[:'reason']
      end

      if attributes.key?(:'ref_type')
        self.ref_type = attributes[:'ref_type']
      end

      if attributes.key?(:'second_party_id')
        self.second_party_id = attributes[:'second_party_id']
      end

      if attributes.key?(:'tax')
        self.tax = attributes[:'tax']
      end

      if attributes.key?(:'tax_receiver_id')
        self.tax_receiver_id = attributes[:'tax_receiver_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @date.nil?
        invalid_properties.push('invalid value for "date", date cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @ref_type.nil?
        invalid_properties.push('invalid value for "ref_type", ref_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      context_id_type_validator = EnumAttributeValidator.new('Object', ['structure_id', 'station_id', 'market_transaction_id', 'character_id', 'corporation_id', 'alliance_id', 'eve_system', 'industry_job_id', 'contract_id', 'planet_id', 'system_id', 'type_id'])
      return false unless context_id_type_validator.valid?(@context_id_type)
      return false if @date.nil?
      return false if @description.nil?
      return false if @id.nil?
      return false if @ref_type.nil?
      ref_type_validator = EnumAttributeValidator.new('Object', ['acceleration_gate_fee', 'advertisement_listing_fee', 'agent_donation', 'agent_location_services', 'agent_miscellaneous', 'agent_mission_collateral_paid', 'agent_mission_collateral_refunded', 'agent_mission_reward', 'agent_mission_reward_corporation_tax', 'agent_mission_time_bonus_reward', 'agent_mission_time_bonus_reward_corporation_tax', 'agent_security_services', 'agent_services_rendered', 'agents_preward', 'alliance_maintainance_fee', 'alliance_registration_fee', 'asset_safety_recovery_tax', 'bounty', 'bounty_prize', 'bounty_prize_corporation_tax', 'bounty_prizes', 'bounty_reimbursement', 'bounty_surcharge', 'brokers_fee', 'clone_activation', 'clone_transfer', 'contraband_fine', 'contract_auction_bid', 'contract_auction_bid_corp', 'contract_auction_bid_refund', 'contract_auction_sold', 'contract_brokers_fee', 'contract_brokers_fee_corp', 'contract_collateral', 'contract_collateral_deposited_corp', 'contract_collateral_payout', 'contract_collateral_refund', 'contract_deposit', 'contract_deposit_corp', 'contract_deposit_refund', 'contract_deposit_sales_tax', 'contract_price', 'contract_price_payment_corp', 'contract_reversal', 'contract_reward', 'contract_reward_deposited', 'contract_reward_deposited_corp', 'contract_reward_refund', 'contract_sales_tax', 'copying', 'corporate_reward_payout', 'corporate_reward_tax', 'corporation_account_withdrawal', 'corporation_bulk_payment', 'corporation_dividend_payment', 'corporation_liquidation', 'corporation_logo_change_cost', 'corporation_payment', 'corporation_registration_fee', 'courier_mission_escrow', 'cspa', 'cspaofflinerefund', 'daily_challenge_reward', 'datacore_fee', 'dna_modification_fee', 'docking_fee', 'duel_wager_escrow', 'duel_wager_payment', 'duel_wager_refund', 'ess_escrow_transfer', 'external_trade_delivery', 'external_trade_freeze', 'external_trade_thaw', 'factory_slot_rental_fee', 'flux_payout', 'flux_tax', 'flux_ticket_repayment', 'flux_ticket_sale', 'gm_cash_transfer', 'industry_job_tax', 'infrastructure_hub_maintenance', 'inheritance', 'insurance', 'item_trader_payment', 'jump_clone_activation_fee', 'jump_clone_installation_fee', 'kill_right_fee', 'lp_store', 'manufacturing', 'market_escrow', 'market_fine_paid', 'market_provider_tax', 'market_transaction', 'medal_creation', 'medal_issued', 'milestone_reward_payment', 'mission_completion', 'mission_cost', 'mission_expiration', 'mission_reward', 'office_rental_fee', 'operation_bonus', 'opportunity_reward', 'planetary_construction', 'planetary_export_tax', 'planetary_import_tax', 'player_donation', 'player_trading', 'project_discovery_reward', 'project_discovery_tax', 'reaction', 'redeemed_isk_token', 'release_of_impounded_property', 'repair_bill', 'reprocessing_tax', 'researching_material_productivity', 'researching_technology', 'researching_time_productivity', 'resource_wars_reward', 'reverse_engineering', 'season_challenge_reward', 'security_processing_fee', 'shares', 'skill_purchase', 'sovereignity_bill', 'store_purchase', 'store_purchase_refund', 'structure_gate_jump', 'transaction_tax', 'upkeep_adjustment_fee', 'war_ally_contract', 'war_fee', 'war_fee_surrender'])
      return false unless ref_type_validator.valid?(@ref_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] context_id_type Object to be assigned
    def context_id_type=(context_id_type)
      validator = EnumAttributeValidator.new('Object', ['structure_id', 'station_id', 'market_transaction_id', 'character_id', 'corporation_id', 'alliance_id', 'eve_system', 'industry_job_id', 'contract_id', 'planet_id', 'system_id', 'type_id'])
      unless validator.valid?(context_id_type)
        fail ArgumentError, "invalid value for \"context_id_type\", must be one of #{validator.allowable_values}."
      end
      @context_id_type = context_id_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ref_type Object to be assigned
    def ref_type=(ref_type)
      validator = EnumAttributeValidator.new('Object', ['acceleration_gate_fee', 'advertisement_listing_fee', 'agent_donation', 'agent_location_services', 'agent_miscellaneous', 'agent_mission_collateral_paid', 'agent_mission_collateral_refunded', 'agent_mission_reward', 'agent_mission_reward_corporation_tax', 'agent_mission_time_bonus_reward', 'agent_mission_time_bonus_reward_corporation_tax', 'agent_security_services', 'agent_services_rendered', 'agents_preward', 'alliance_maintainance_fee', 'alliance_registration_fee', 'asset_safety_recovery_tax', 'bounty', 'bounty_prize', 'bounty_prize_corporation_tax', 'bounty_prizes', 'bounty_reimbursement', 'bounty_surcharge', 'brokers_fee', 'clone_activation', 'clone_transfer', 'contraband_fine', 'contract_auction_bid', 'contract_auction_bid_corp', 'contract_auction_bid_refund', 'contract_auction_sold', 'contract_brokers_fee', 'contract_brokers_fee_corp', 'contract_collateral', 'contract_collateral_deposited_corp', 'contract_collateral_payout', 'contract_collateral_refund', 'contract_deposit', 'contract_deposit_corp', 'contract_deposit_refund', 'contract_deposit_sales_tax', 'contract_price', 'contract_price_payment_corp', 'contract_reversal', 'contract_reward', 'contract_reward_deposited', 'contract_reward_deposited_corp', 'contract_reward_refund', 'contract_sales_tax', 'copying', 'corporate_reward_payout', 'corporate_reward_tax', 'corporation_account_withdrawal', 'corporation_bulk_payment', 'corporation_dividend_payment', 'corporation_liquidation', 'corporation_logo_change_cost', 'corporation_payment', 'corporation_registration_fee', 'courier_mission_escrow', 'cspa', 'cspaofflinerefund', 'daily_challenge_reward', 'datacore_fee', 'dna_modification_fee', 'docking_fee', 'duel_wager_escrow', 'duel_wager_payment', 'duel_wager_refund', 'ess_escrow_transfer', 'external_trade_delivery', 'external_trade_freeze', 'external_trade_thaw', 'factory_slot_rental_fee', 'flux_payout', 'flux_tax', 'flux_ticket_repayment', 'flux_ticket_sale', 'gm_cash_transfer', 'industry_job_tax', 'infrastructure_hub_maintenance', 'inheritance', 'insurance', 'item_trader_payment', 'jump_clone_activation_fee', 'jump_clone_installation_fee', 'kill_right_fee', 'lp_store', 'manufacturing', 'market_escrow', 'market_fine_paid', 'market_provider_tax', 'market_transaction', 'medal_creation', 'medal_issued', 'milestone_reward_payment', 'mission_completion', 'mission_cost', 'mission_expiration', 'mission_reward', 'office_rental_fee', 'operation_bonus', 'opportunity_reward', 'planetary_construction', 'planetary_export_tax', 'planetary_import_tax', 'player_donation', 'player_trading', 'project_discovery_reward', 'project_discovery_tax', 'reaction', 'redeemed_isk_token', 'release_of_impounded_property', 'repair_bill', 'reprocessing_tax', 'researching_material_productivity', 'researching_technology', 'researching_time_productivity', 'resource_wars_reward', 'reverse_engineering', 'season_challenge_reward', 'security_processing_fee', 'shares', 'skill_purchase', 'sovereignity_bill', 'store_purchase', 'store_purchase_refund', 'structure_gate_jump', 'transaction_tax', 'upkeep_adjustment_fee', 'war_ally_contract', 'war_fee', 'war_fee_surrender'])
      unless validator.valid?(ref_type)
        fail ArgumentError, "invalid value for \"ref_type\", must be one of #{validator.allowable_values}."
      end
      @ref_type = ref_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount == o.amount &&
          balance == o.balance &&
          context_id == o.context_id &&
          context_id_type == o.context_id_type &&
          date == o.date &&
          description == o.description &&
          first_party_id == o.first_party_id &&
          id == o.id &&
          reason == o.reason &&
          ref_type == o.ref_type &&
          second_party_id == o.second_party_id &&
          tax == o.tax &&
          tax_receiver_id == o.tax_receiver_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [amount, balance, context_id, context_id_type, date, description, first_party_id, id, reason, ref_type, second_party_id, tax, tax_receiver_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        ESI.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end
