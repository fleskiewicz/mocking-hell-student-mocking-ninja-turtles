class Icecream
  attr_accessor :id, :flavor, :type, :price

  def initialize(id, flavor, type, price)
    @id = id
    @flavor = flavor
    @type = type
    @price = price
  end

  def to_s
    "#{flavor} #{type} #{price}"
  end
end
