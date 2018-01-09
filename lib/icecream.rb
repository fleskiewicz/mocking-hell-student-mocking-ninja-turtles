class Icecream
  attr_accessor :id, :flavor, :type, :price

  def initialize(id, flavor, type, price)
    @id = id
    @flavor = flavor
    @type = type
    @price = price
    validate
  end

  def to_s
    "#{flavor} #{type} #{price}"
  end
  
  def validate
    raise ArgumentError, 'Invalid ID' unless valid_id?
    raise ArgumentError, 'Invalid flavor' unless valid_flavor?
    raise ArgumentError, 'Invalid type' unless valid_type?
    raise ArgumentError, 'Invalid price' unless valid_price?
  end

  def valid_id?
    @id.is_a?(Numeric)
  end

  def valid_flavor?
    @flavor.is_a?(String) && @flavor.length >= 1 && @flavor.length <= 20 
  end

  def valid_type?
    @type.is_a?(String) && @type.length >= 1 && @type.length <= 20 
  end

  def valid_price?
    @price.is_a?(Numeric)
  end
  
end
