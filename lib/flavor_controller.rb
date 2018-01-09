class FlavorController
  attr_accessor :flavors

	def initialize(flavors = [])
		@flavors = flavors
	end
	
	def get_flavor(id)
		@flavors.find { |f| f.id == id }
	end
	
  def add_flavor(name, price)
		id = @flavors.last.nil? ? 1 : @flavors.last.id+1
    new_flavor = Flavor.new(id, name, price)
    @flavors.push(new_flavor)
  end
	
  def update_flavor(id, modified_flavor)
		flavor = get_flavor(id)
		copy_flavor(flavor, modified_flavor)
  end  	
	
	def copy_flavor(current_flavor, new_flavor)
		current_flavor.id = new_flavor.id
		current_flavor.name = new_flavor.name
		current_flavor.price = new_flavor.price
		current_flavor
	end
	
  def delete_flavor(id) 
		@flavors.delete_if{ |flavor| flavor.id == id }
  end
	
  def show_flavor(id)
    if !@@icecream.at(id).nil?
      puts "Icecream with id = #{id}:
      taste = #{@@icecream[id].taste} ,
      type = #{@@icecream[id].type} ,
      price = #{@@icecream[id].price}."
    else
      puts "Icecream with id = #{id} doesn't appear to exist. Please add a new one."
    end
  end

  
  def insert_data_edit_flavor(id, name, price)
    @@flavor[id].name = name if name != ''
    @@flavor[id].price = price if price != ''
  end
end
