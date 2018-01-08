class icecream
  attr_accessor :id, :taste, :type, :price

  def initialize(id, taste, type, price)
    @id = id
    @taste = taste
    @model = type
    @price = price
  end

  def to_s
    "#{taste} #{type} #{price}"
  end
end
