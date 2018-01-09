class IcecreamController
  attr_accessor :icecreams

  def initialize(icecreams = [])
    @icecreams = icecreams
  end

  def icecream_count
    @icecreams.count
  end

  def get_icecream(id)
    @icecreams.find { |s| s.id == id }
  end

  def add_icecream(icecream)
    id = get_last_id + 1
    new_icecream = Icecream.new(id, falvor,type, price)
    @icecreams.push(new_icecream)
  end

  def delete_icecream(id)
    @icecreams.delete_if { |icecream| icecream.id == id }
  end

  def update_icecream(id, mod_icecream)
    icecream = get_icecream(id)
    modified_icecream = Icecream.new(id, new_flavor,new_type, new_price)
    copy_icecream(icecream, modified_icecream)
  end

  def copy_icecream(current_icecream, new_icecream)
    current_icecream.id = new_icecream.id
    current_icecream.flavor = new_icecream.flavor
    current_icecream.type = new_icecream.type
    current_icecream.price = new_icecream.price
    current_icecream
  end
end
