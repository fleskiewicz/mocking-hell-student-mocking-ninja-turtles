class Shop
	def initialize(flavor_controller, icecream_controller, bill_controller)
		@flavor_controller = flavor_controller
		@icecream_controller = icecream_controller
		@bill_controller = bill_controller
	end

  def order_icecream(flavors_id)
    price = 0
    icecream_id = @icecream_controller.icecream_count+1
    flavors_id.each { |id|
      smak = @flavor_controller.get_flavor(id)
      price += smak.price
      icecream_tastes.push(smak.name)
    }
    new_icecream = Icecream.new(icecream_id, icecream_tastes, price)
    @icecream_controller.add_icecream(new_icecream)
  end

  def make_bill(name)
    cost = 0
    bill_id = @bill_controller.bill_count+1
    @icecream_controller.icecreams.each { |icecream|
      products.push(icecream)
      cost += icecream.price
    }
    new_bill = Bill.new(bill_id, name, products, cost)
    @bill_controller.add_bill(new_bill)
  end


end
