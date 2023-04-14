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
  class GetMarketsStructuresStructureId200Ok
    # duration integer
    attr_accessor :duration

    # is_buy_order boolean
    attr_accessor :is_buy_order

    # issued string
    attr_accessor :issued

    # location_id integer
    attr_accessor :location_id

    # min_volume integer
    attr_accessor :min_volume

    # order_id integer
    attr_accessor :order_id

    # price number
    attr_accessor :price

    # range string
    attr_accessor :range

    # type_id integer
    attr_accessor :type_id

    # volume_remain integer
    attr_accessor :volume_remain

    # volume_total integer
    attr_accessor :volume_total

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
        :'duration' => :'duration',
        :'is_buy_order' => :'is_buy_order',
        :'issued' => :'issued',
        :'location_id' => :'location_id',
        :'min_volume' => :'min_volume',
        :'order_id' => :'order_id',
        :'price' => :'price',
        :'range' => :'range',
        :'type_id' => :'type_id',
        :'volume_remain' => :'volume_remain',
        :'volume_total' => :'volume_total'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'duration' => :'Object',
        :'is_buy_order' => :'Object',
        :'issued' => :'Object',
        :'location_id' => :'Object',
        :'min_volume' => :'Object',
        :'order_id' => :'Object',
        :'price' => :'Object',
        :'range' => :'Object',
        :'type_id' => :'Object',
        :'volume_remain' => :'Object',
        :'volume_total' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ESI::GetMarketsStructuresStructureId200Ok` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ESI::GetMarketsStructuresStructureId200Ok`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.key?(:'is_buy_order')
        self.is_buy_order = attributes[:'is_buy_order']
      end

      if attributes.key?(:'issued')
        self.issued = attributes[:'issued']
      end

      if attributes.key?(:'location_id')
        self.location_id = attributes[:'location_id']
      end

      if attributes.key?(:'min_volume')
        self.min_volume = attributes[:'min_volume']
      end

      if attributes.key?(:'order_id')
        self.order_id = attributes[:'order_id']
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.key?(:'range')
        self.range = attributes[:'range']
      end

      if attributes.key?(:'type_id')
        self.type_id = attributes[:'type_id']
      end

      if attributes.key?(:'volume_remain')
        self.volume_remain = attributes[:'volume_remain']
      end

      if attributes.key?(:'volume_total')
        self.volume_total = attributes[:'volume_total']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @duration.nil?
        invalid_properties.push('invalid value for "duration", duration cannot be nil.')
      end

      if @is_buy_order.nil?
        invalid_properties.push('invalid value for "is_buy_order", is_buy_order cannot be nil.')
      end

      if @issued.nil?
        invalid_properties.push('invalid value for "issued", issued cannot be nil.')
      end

      if @location_id.nil?
        invalid_properties.push('invalid value for "location_id", location_id cannot be nil.')
      end

      if @min_volume.nil?
        invalid_properties.push('invalid value for "min_volume", min_volume cannot be nil.')
      end

      if @order_id.nil?
        invalid_properties.push('invalid value for "order_id", order_id cannot be nil.')
      end

      if @price.nil?
        invalid_properties.push('invalid value for "price", price cannot be nil.')
      end

      if @range.nil?
        invalid_properties.push('invalid value for "range", range cannot be nil.')
      end

      if @type_id.nil?
        invalid_properties.push('invalid value for "type_id", type_id cannot be nil.')
      end

      if @volume_remain.nil?
        invalid_properties.push('invalid value for "volume_remain", volume_remain cannot be nil.')
      end

      if @volume_total.nil?
        invalid_properties.push('invalid value for "volume_total", volume_total cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @duration.nil?
      return false if @is_buy_order.nil?
      return false if @issued.nil?
      return false if @location_id.nil?
      return false if @min_volume.nil?
      return false if @order_id.nil?
      return false if @price.nil?
      return false if @range.nil?
      range_validator = EnumAttributeValidator.new('Object', ['station', 'region', 'solarsystem', '1', '2', '3', '4', '5', '10', '20', '30', '40'])
      return false unless range_validator.valid?(@range)
      return false if @type_id.nil?
      return false if @volume_remain.nil?
      return false if @volume_total.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] range Object to be assigned
    def range=(range)
      validator = EnumAttributeValidator.new('Object', ['station', 'region', 'solarsystem', '1', '2', '3', '4', '5', '10', '20', '30', '40'])
      unless validator.valid?(range)
        fail ArgumentError, "invalid value for \"range\", must be one of #{validator.allowable_values}."
      end
      @range = range
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          duration == o.duration &&
          is_buy_order == o.is_buy_order &&
          issued == o.issued &&
          location_id == o.location_id &&
          min_volume == o.min_volume &&
          order_id == o.order_id &&
          price == o.price &&
          range == o.range &&
          type_id == o.type_id &&
          volume_remain == o.volume_remain &&
          volume_total == o.volume_total
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [duration, is_buy_order, issued, location_id, min_volume, order_id, price, range, type_id, volume_remain, volume_total].hash
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
