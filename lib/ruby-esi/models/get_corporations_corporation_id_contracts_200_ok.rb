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
  class GetCorporationsCorporationIdContracts200Ok
    # Who will accept the contract
    attr_accessor :acceptor_id

    # ID to whom the contract is assigned, can be corporation or character ID
    attr_accessor :assignee_id

    # To whom the contract is available
    attr_accessor :availability

    # Buyout price (for Auctions only)
    attr_accessor :buyout

    # Collateral price (for Couriers only)
    attr_accessor :collateral

    # contract_id integer
    attr_accessor :contract_id

    # Date of confirmation of contract
    attr_accessor :date_accepted

    # Date of completed of contract
    attr_accessor :date_completed

    # Expiration date of the contract
    attr_accessor :date_expired

    # Сreation date of the contract
    attr_accessor :date_issued

    # Number of days to perform the contract
    attr_accessor :days_to_complete

    # End location ID (for Couriers contract)
    attr_accessor :end_location_id

    # true if the contract was issued on behalf of the issuer's corporation
    attr_accessor :for_corporation

    # Character's corporation ID for the issuer
    attr_accessor :issuer_corporation_id

    # Character ID for the issuer
    attr_accessor :issuer_id

    # Price of contract (for ItemsExchange and Auctions)
    attr_accessor :price

    # Remuneration for contract (for Couriers only)
    attr_accessor :reward

    # Start location ID (for Couriers contract)
    attr_accessor :start_location_id

    # Status of the the contract
    attr_accessor :status

    # Title of the contract
    attr_accessor :title

    # Type of the contract
    attr_accessor :type

    # Volume of items in the contract
    attr_accessor :volume

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
        :'acceptor_id' => :'acceptor_id',
        :'assignee_id' => :'assignee_id',
        :'availability' => :'availability',
        :'buyout' => :'buyout',
        :'collateral' => :'collateral',
        :'contract_id' => :'contract_id',
        :'date_accepted' => :'date_accepted',
        :'date_completed' => :'date_completed',
        :'date_expired' => :'date_expired',
        :'date_issued' => :'date_issued',
        :'days_to_complete' => :'days_to_complete',
        :'end_location_id' => :'end_location_id',
        :'for_corporation' => :'for_corporation',
        :'issuer_corporation_id' => :'issuer_corporation_id',
        :'issuer_id' => :'issuer_id',
        :'price' => :'price',
        :'reward' => :'reward',
        :'start_location_id' => :'start_location_id',
        :'status' => :'status',
        :'title' => :'title',
        :'type' => :'type',
        :'volume' => :'volume'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'acceptor_id' => :'Object',
        :'assignee_id' => :'Object',
        :'availability' => :'Object',
        :'buyout' => :'Object',
        :'collateral' => :'Object',
        :'contract_id' => :'Object',
        :'date_accepted' => :'Object',
        :'date_completed' => :'Object',
        :'date_expired' => :'Object',
        :'date_issued' => :'Object',
        :'days_to_complete' => :'Object',
        :'end_location_id' => :'Object',
        :'for_corporation' => :'Object',
        :'issuer_corporation_id' => :'Object',
        :'issuer_id' => :'Object',
        :'price' => :'Object',
        :'reward' => :'Object',
        :'start_location_id' => :'Object',
        :'status' => :'Object',
        :'title' => :'Object',
        :'type' => :'Object',
        :'volume' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ESI::GetCorporationsCorporationIdContracts200Ok` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ESI::GetCorporationsCorporationIdContracts200Ok`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'acceptor_id')
        self.acceptor_id = attributes[:'acceptor_id']
      end

      if attributes.key?(:'assignee_id')
        self.assignee_id = attributes[:'assignee_id']
      end

      if attributes.key?(:'availability')
        self.availability = attributes[:'availability']
      end

      if attributes.key?(:'buyout')
        self.buyout = attributes[:'buyout']
      end

      if attributes.key?(:'collateral')
        self.collateral = attributes[:'collateral']
      end

      if attributes.key?(:'contract_id')
        self.contract_id = attributes[:'contract_id']
      end

      if attributes.key?(:'date_accepted')
        self.date_accepted = attributes[:'date_accepted']
      end

      if attributes.key?(:'date_completed')
        self.date_completed = attributes[:'date_completed']
      end

      if attributes.key?(:'date_expired')
        self.date_expired = attributes[:'date_expired']
      end

      if attributes.key?(:'date_issued')
        self.date_issued = attributes[:'date_issued']
      end

      if attributes.key?(:'days_to_complete')
        self.days_to_complete = attributes[:'days_to_complete']
      end

      if attributes.key?(:'end_location_id')
        self.end_location_id = attributes[:'end_location_id']
      end

      if attributes.key?(:'for_corporation')
        self.for_corporation = attributes[:'for_corporation']
      end

      if attributes.key?(:'issuer_corporation_id')
        self.issuer_corporation_id = attributes[:'issuer_corporation_id']
      end

      if attributes.key?(:'issuer_id')
        self.issuer_id = attributes[:'issuer_id']
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.key?(:'reward')
        self.reward = attributes[:'reward']
      end

      if attributes.key?(:'start_location_id')
        self.start_location_id = attributes[:'start_location_id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'volume')
        self.volume = attributes[:'volume']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @acceptor_id.nil?
        invalid_properties.push('invalid value for "acceptor_id", acceptor_id cannot be nil.')
      end

      if @assignee_id.nil?
        invalid_properties.push('invalid value for "assignee_id", assignee_id cannot be nil.')
      end

      if @availability.nil?
        invalid_properties.push('invalid value for "availability", availability cannot be nil.')
      end

      if @contract_id.nil?
        invalid_properties.push('invalid value for "contract_id", contract_id cannot be nil.')
      end

      if @date_expired.nil?
        invalid_properties.push('invalid value for "date_expired", date_expired cannot be nil.')
      end

      if @date_issued.nil?
        invalid_properties.push('invalid value for "date_issued", date_issued cannot be nil.')
      end

      if @for_corporation.nil?
        invalid_properties.push('invalid value for "for_corporation", for_corporation cannot be nil.')
      end

      if @issuer_corporation_id.nil?
        invalid_properties.push('invalid value for "issuer_corporation_id", issuer_corporation_id cannot be nil.')
      end

      if @issuer_id.nil?
        invalid_properties.push('invalid value for "issuer_id", issuer_id cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @acceptor_id.nil?
      return false if @assignee_id.nil?
      return false if @availability.nil?
      availability_validator = EnumAttributeValidator.new('Object', ['public', 'personal', 'corporation', 'alliance'])
      return false unless availability_validator.valid?(@availability)
      return false if @contract_id.nil?
      return false if @date_expired.nil?
      return false if @date_issued.nil?
      return false if @for_corporation.nil?
      return false if @issuer_corporation_id.nil?
      return false if @issuer_id.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('Object', ['outstanding', 'in_progress', 'finished_issuer', 'finished_contractor', 'finished', 'cancelled', 'rejected', 'failed', 'deleted', 'reversed'])
      return false unless status_validator.valid?(@status)
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('Object', ['unknown', 'item_exchange', 'auction', 'courier', 'loan'])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] availability Object to be assigned
    def availability=(availability)
      validator = EnumAttributeValidator.new('Object', ['public', 'personal', 'corporation', 'alliance'])
      unless validator.valid?(availability)
        fail ArgumentError, "invalid value for \"availability\", must be one of #{validator.allowable_values}."
      end
      @availability = availability
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('Object', ['outstanding', 'in_progress', 'finished_issuer', 'finished_contractor', 'finished', 'cancelled', 'rejected', 'failed', 'deleted', 'reversed'])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('Object', ['unknown', 'item_exchange', 'auction', 'courier', 'loan'])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          acceptor_id == o.acceptor_id &&
          assignee_id == o.assignee_id &&
          availability == o.availability &&
          buyout == o.buyout &&
          collateral == o.collateral &&
          contract_id == o.contract_id &&
          date_accepted == o.date_accepted &&
          date_completed == o.date_completed &&
          date_expired == o.date_expired &&
          date_issued == o.date_issued &&
          days_to_complete == o.days_to_complete &&
          end_location_id == o.end_location_id &&
          for_corporation == o.for_corporation &&
          issuer_corporation_id == o.issuer_corporation_id &&
          issuer_id == o.issuer_id &&
          price == o.price &&
          reward == o.reward &&
          start_location_id == o.start_location_id &&
          status == o.status &&
          title == o.title &&
          type == o.type &&
          volume == o.volume
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [acceptor_id, assignee_id, availability, buyout, collateral, contract_id, date_accepted, date_completed, date_expired, date_issued, days_to_complete, end_location_id, for_corporation, issuer_corporation_id, issuer_id, price, reward, start_location_id, status, title, type, volume].hash
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
