class Flavor
  attr_accessor :id, :name, :price

  def initialize(id, name, price)
    @id = id
    @name = name
    @price = price
    validate
    validate2
  end

  def validate
    raise ArgumentError, 'Invalid ID' unless valid_id?
    raise ArgumentError, 'Invalid name' unless valid_name?
  end
  def validate2
    raise ArgumentError, 'Invalid price' unless valid_price?
  end

  def valid_id?
    @id.is_a?(Numeric)
  end

  def valid_name?
    @name.is_a?(String) && @name.length > 0 && @name.length <= 32
  end

  def valid_price?
    @price.is_a?(Numeric)
  end

  def to_s
    "#{name} #{price}"
  end
end
