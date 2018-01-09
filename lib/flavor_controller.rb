class FlavorController
  attr_accessor :flavors

  def initialize(flavors = [])
    @flavors = flavors
  end

  def get_flavor(id)
    @flavors.find { |f| f.id == id }
  end

	def get_last_id
		@flavors.last.nil? ? 0 : @flavors.last.id
	end
	
  def add_flavor(name, price)
		id = get_last_id + 1
    new_flavor = Flavor.new(id, name, price)
    @flavors.push(new_flavor)
  end
	
  def update_flavor(id, new_name, new_price)
		flavor = get_flavor(id)
		modified_flavor = Flavor.new(id, new_name, new_price)
		copy_flavor(flavor, modified_flavor)
  end  	
	
	def copy_flavor(current_flavor, new_flavor)
		current_flavor.id = new_flavor.id
		current_flavor.name = new_flavor.name
		current_flavor.price = new_flavor.price
		current_flavor
	end
	
	def remove_flavor(id)
		@flavors.delete_if { |f| f.id == id }
	end

end
