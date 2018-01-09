require_relative 'bill'
require_relative 'bill_controller'
require_relative 'flavor'
require_relative 'flavor_controller'
require_relative 'icecream'
require_relative 'icecream_controller'
require_relative 'shop'

class Console
  def initialize
    @bill_controller = BillController.new
    @flavor_controller = FlavorController.new
    @icescream_controller = IcecreamController.new
    @shop = Shop.new(@bill_controller, @flavor_controller, @icecream_controller)
    print_menu
  end

  def choose_menu_option
    c = gets.chomp
    case c
    when '1'
      print_menu_flavor
    when '2'
      puts 'Dwa'
    when '3'
      exit
    else
      print_menu
    end
    print_menu
  end

  def print_menu
    puts 'Ice Cream Parlor'
    puts '1) Manage flavors'
    puts '2) Take order'
    puts '3) Quit'
    choose_menu_option
  end

  def choose_menu_flavor_option
    c = gets.chomp
    case c
    when '1'
      display_flavors
    when '2'
      add_flavor
    when '3'
      update_flavor
    when '4'
      remove_flavor
    when '5'
      return
    else
      print_menu_flavor
    end
    print_menu_flavor
  end

  def print_menu_flavor
    puts 'Ice Cream Parlor > Manage flavors'
    puts '1) Display'
    puts '2) Add'
    puts '3) Update'
    puts '4) Remove'
    puts '5) Return to main menu'
    choose_menu_flavor_option
  end

  def display_flavors
    puts 'List of flavors:'
    @flavor_controller.flavors.each { |f| puts f.to_s }
  end

  def add_flavor
    print 'Name of flavor: '
    name = gets.chomp
    print 'Price: '
    price = Float(gets.chomp)
    @flavor_controller.add_flavor(name, price)
  end

  def update_flavor
    print 'ID of flavor to edit: '
    id = Integer(gets.chomp)
    print 'Name of flavor: '
    new_name = gets.chomp
    print 'Price: '
    new_price = Float(gets.chomp)
    @flavor_controller.update_flavor(id, new_name, new_price)
  end

  def remove_flavor
    print 'ID of flavor to remove: '
    id = Integer(gets.chomp)
    @flavor_controller.remove_flavor(id)
  end
end
