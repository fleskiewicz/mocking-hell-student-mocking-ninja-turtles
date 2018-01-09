class Bill
  attr_accessor :id, :name, :products, :cost

  def initialize(id, name, products, cost)
    @id = id
    @name = name
		@products = products
		@cost = cost
  end

  def to_s
    "#{name} #{cost}"
  end
end

  def validate
    raise ArgumentError, 'Invalid ID' unless valid_id?
    raise ArgumentError, 'Invalid name' unless valid_name?
    raise ArgumentError, 'Invalid products' unless valid_products?
    raise ArgumentError, 'Invalid cost' unless valid_cost?
  end

  def valid_id?
    @id.is_a?(Numeric)
  end

  def valid_name?
    @name.is_a?(String)  && @name.length > 2
  end

  def valid_products?
    @products.is_a?(String) && @products.length > 2
  end

  def valid_cost?
    @cost =~ /^[0-9]$/ && @cost > 0
  end

