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

  def get_last_id
    @icecreams.last.nil? ? 0 : @icecreams.last.id
  end

  def add_icecream(icecream)
    @icecreams.push(icecream)
  end

  def update_icecream(id, mod_icecream)
    icecream = get_icecream(id)
    copy_icecream(icecream, mod_icecream)
  end

  def copy_icecream(current_icecream, new_icecream)
    current_icecream.id = new_icecream.id
    current_icecream.flavor = new_icecream.flavor
    current_icecream.type = new_icecream.type
    current_icecream.price = new_icecream.price
    current_icecream
  end

  def remove_icecream(id)
    @icecreams.delete_if { |icecream| icecream.id == id }
  end
end
