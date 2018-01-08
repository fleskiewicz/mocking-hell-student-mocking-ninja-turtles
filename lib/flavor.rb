class Flavor
  attr_accessor :id, :name, :price

  def initialize(id, name, price)
    @id = id
    @taste = name
    @price = price 
  end

  def to_s
    "#{name} #{price}"
  end
end
