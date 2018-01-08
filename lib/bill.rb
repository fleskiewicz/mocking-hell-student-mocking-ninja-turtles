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
