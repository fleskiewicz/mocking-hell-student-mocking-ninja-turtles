class Taste
  attr_accessor :id, :Taste, :Price

  def initialize(id, taste, price)
    @id = id
    @taste = taste
    @price = price 
  end

  def to_s
    "#{taste} #{price}"
  end
end
