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
  class GetCorporationsCorporationIdBookmarks200Ok
    # bookmark_id integer
    attr_accessor :bookmark_id

    attr_accessor :coordinates

    # created string
    attr_accessor :created

    # creator_id integer
    attr_accessor :creator_id

    # folder_id integer
    attr_accessor :folder_id

    attr_accessor :item

    # label string
    attr_accessor :label

    # location_id integer
    attr_accessor :location_id

    # notes string
    attr_accessor :notes

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'bookmark_id' => :'bookmark_id',
        :'coordinates' => :'coordinates',
        :'created' => :'created',
        :'creator_id' => :'creator_id',
        :'folder_id' => :'folder_id',
        :'item' => :'item',
        :'label' => :'label',
        :'location_id' => :'location_id',
        :'notes' => :'notes'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'bookmark_id' => :'Object',
        :'coordinates' => :'Object',
        :'created' => :'Object',
        :'creator_id' => :'Object',
        :'folder_id' => :'Object',
        :'item' => :'Object',
        :'label' => :'Object',
        :'location_id' => :'Object',
        :'notes' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ESI::GetCorporationsCorporationIdBookmarks200Ok` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ESI::GetCorporationsCorporationIdBookmarks200Ok`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'bookmark_id')
        self.bookmark_id = attributes[:'bookmark_id']
      end

      if attributes.key?(:'coordinates')
        self.coordinates = attributes[:'coordinates']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'creator_id')
        self.creator_id = attributes[:'creator_id']
      end

      if attributes.key?(:'folder_id')
        self.folder_id = attributes[:'folder_id']
      end

      if attributes.key?(:'item')
        self.item = attributes[:'item']
      end

      if attributes.key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.key?(:'location_id')
        self.location_id = attributes[:'location_id']
      end

      if attributes.key?(:'notes')
        self.notes = attributes[:'notes']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @bookmark_id.nil?
        invalid_properties.push('invalid value for "bookmark_id", bookmark_id cannot be nil.')
      end

      if @created.nil?
        invalid_properties.push('invalid value for "created", created cannot be nil.')
      end

      if @creator_id.nil?
        invalid_properties.push('invalid value for "creator_id", creator_id cannot be nil.')
      end

      if @label.nil?
        invalid_properties.push('invalid value for "label", label cannot be nil.')
      end

      if @location_id.nil?
        invalid_properties.push('invalid value for "location_id", location_id cannot be nil.')
      end

      if @notes.nil?
        invalid_properties.push('invalid value for "notes", notes cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @bookmark_id.nil?
      return false if @created.nil?
      return false if @creator_id.nil?
      return false if @label.nil?
      return false if @location_id.nil?
      return false if @notes.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          bookmark_id == o.bookmark_id &&
          coordinates == o.coordinates &&
          created == o.created &&
          creator_id == o.creator_id &&
          folder_id == o.folder_id &&
          item == o.item &&
          label == o.label &&
          location_id == o.location_id &&
          notes == o.notes
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [bookmark_id, coordinates, created, creator_id, folder_id, item, label, location_id, notes].hash
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
