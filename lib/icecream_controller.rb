class IcecreamController
  attr_accessor :icecreams

  def initialize(icecream = [])
    @icecream = icecreams
  end

  def icecream_count
    @icecreams.count
  end

  def get_icecream(id)
    @icecreams.find { |s| s.id == id }
  end

  def add_icecream(icecream)
    @icecreams.push(icecream)
  end

  def delete_icecream(id)
    @icecreams.delete_if { |icecream| icecream.id == id }
  end

  def edit_icecream(id, mod_icecream)
    icecream = get_icecream(id)
    copy_icecream(icecream, mod_icecream)
  end

  def copy_icecream(current_book, new_book)
    current_icecream.id = new_icecream.id
    current_icecream.flavor = new_icecream.flavor
    current_icecream.type = new_icecream.type
    current_icecream.price = new_icecream.price
    current_icecream
  end
end
