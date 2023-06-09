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
  class GetCorporationsCorporationIdOk
    # ID of the alliance that corporation is a member of, if any
    attr_accessor :alliance_id

    # ceo_id integer
    attr_accessor :ceo_id

    # creator_id integer
    attr_accessor :creator_id

    # date_founded string
    attr_accessor :date_founded

    # description string
    attr_accessor :description

    # faction_id integer
    attr_accessor :faction_id

    # home_station_id integer
    attr_accessor :home_station_id

    # member_count integer
    attr_accessor :member_count

    # the full name of the corporation
    attr_accessor :name

    # shares integer
    attr_accessor :shares

    # tax_rate number
    attr_accessor :tax_rate

    # the short name of the corporation
    attr_accessor :ticker

    # url string
    attr_accessor :url

    # war_eligible boolean
    attr_accessor :war_eligible

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'alliance_id' => :'alliance_id',
        :'ceo_id' => :'ceo_id',
        :'creator_id' => :'creator_id',
        :'date_founded' => :'date_founded',
        :'description' => :'description',
        :'faction_id' => :'faction_id',
        :'home_station_id' => :'home_station_id',
        :'member_count' => :'member_count',
        :'name' => :'name',
        :'shares' => :'shares',
        :'tax_rate' => :'tax_rate',
        :'ticker' => :'ticker',
        :'url' => :'url',
        :'war_eligible' => :'war_eligible'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'alliance_id' => :'Object',
        :'ceo_id' => :'Object',
        :'creator_id' => :'Object',
        :'date_founded' => :'Object',
        :'description' => :'Object',
        :'faction_id' => :'Object',
        :'home_station_id' => :'Object',
        :'member_count' => :'Object',
        :'name' => :'Object',
        :'shares' => :'Object',
        :'tax_rate' => :'Object',
        :'ticker' => :'Object',
        :'url' => :'Object',
        :'war_eligible' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ESI::GetCorporationsCorporationIdOk` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ESI::GetCorporationsCorporationIdOk`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'alliance_id')
        self.alliance_id = attributes[:'alliance_id']
      end

      if attributes.key?(:'ceo_id')
        self.ceo_id = attributes[:'ceo_id']
      end

      if attributes.key?(:'creator_id')
        self.creator_id = attributes[:'creator_id']
      end

      if attributes.key?(:'date_founded')
        self.date_founded = attributes[:'date_founded']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'faction_id')
        self.faction_id = attributes[:'faction_id']
      end

      if attributes.key?(:'home_station_id')
        self.home_station_id = attributes[:'home_station_id']
      end

      if attributes.key?(:'member_count')
        self.member_count = attributes[:'member_count']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'shares')
        self.shares = attributes[:'shares']
      end

      if attributes.key?(:'tax_rate')
        self.tax_rate = attributes[:'tax_rate']
      end

      if attributes.key?(:'ticker')
        self.ticker = attributes[:'ticker']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'war_eligible')
        self.war_eligible = attributes[:'war_eligible']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @ceo_id.nil?
        invalid_properties.push('invalid value for "ceo_id", ceo_id cannot be nil.')
      end

      if @creator_id.nil?
        invalid_properties.push('invalid value for "creator_id", creator_id cannot be nil.')
      end

      if @member_count.nil?
        invalid_properties.push('invalid value for "member_count", member_count cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @tax_rate.nil?
        invalid_properties.push('invalid value for "tax_rate", tax_rate cannot be nil.')
      end

      if @ticker.nil?
        invalid_properties.push('invalid value for "ticker", ticker cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @ceo_id.nil?
      return false if @creator_id.nil?
      return false if @member_count.nil?
      return false if @name.nil?
      return false if @tax_rate.nil?
      return false if @ticker.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          alliance_id == o.alliance_id &&
          ceo_id == o.ceo_id &&
          creator_id == o.creator_id &&
          date_founded == o.date_founded &&
          description == o.description &&
          faction_id == o.faction_id &&
          home_station_id == o.home_station_id &&
          member_count == o.member_count &&
          name == o.name &&
          shares == o.shares &&
          tax_rate == o.tax_rate &&
          ticker == o.ticker &&
          url == o.url &&
          war_eligible == o.war_eligible
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [alliance_id, ceo_id, creator_id, date_founded, description, faction_id, home_station_id, member_count, name, shares, tax_rate, ticker, url, war_eligible].hash
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
