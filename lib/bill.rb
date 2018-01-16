class Bill
  attr_accessor :id, :name, :products

  def initialize(id, name, products)
    @id = id
    @name = name
    @products = products
    validate
  end

  def to_s
    "#{name}"
  end

  def validate
    raise ArgumentError, 'Invalid ID' unless valid_id?
    raise ArgumentError, 'Invalid name' unless valid_name?
  end

  def valid_id?
    @id.is_a?(Numeric)
  end

  def valid_name?
    @name.is_a?(String) && @name.length > 2
  end

  def valid_products?
    @products.is_a?(Array)
  end

end
