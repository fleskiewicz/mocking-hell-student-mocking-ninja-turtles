class someone
  attr_accessor :id, :name, :lastname

  def initialize(id, name, lastname)
    @id = id
    @name = name
    @lastname = lastname   
  end

  def to_s
    "#{name} #{lastname}"
  end
end