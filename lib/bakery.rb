class Bakery
  attr_accessor :someone, :icecream
  @@someone = []
  @@icecream = []
  @@flavor = []

  
 #osoba
  def show_someone(id)
    if !@@someone.at(id).nil?
      puts "Person with id = #{id}: #{@@someone[id]}"
      return @@someone[id]
    else
      puts "Person with id = #{id} never existed. Please add new person to the database"
      return false
    end
  end
  
  def add_person(id, firstname, lastname)
    size = @@someone.size
    id = 0
    id += 1 while id < size && !@@someone[id].nil?
    person = Person.new(id, firstname, lastname)
    @@someone.insert(id, person)
    puts "Added new person to database:
    id - #{@@someone[id].id},
    firstname - #{@@someone[id].firstname},
    lastname - #{@@someone[id].lastname}."
  end
 
  def edit_person(id, firstname, lastname)
    if !@@someone.at(id).nil?
    insert_data_edit_person(id, firstname, lastname)
      puts "Person with id = #{@@someone[id].id} has been updated."
    else
      puts "Person with id = #{id} doesn't appear in database."
    end
  end  
    
  def insert_data_edit_person(id, firstname, lastname)
    @@someone[id].firstname = firstname if firstname != ''
    @@someone[id].lastname = lastname if lastname != ''
  end
    
  def delete_person(id)
    if !@@someone.at(id).nil?
      @@someone[id] = nil
      puts "Person with id = #{id} has been removed."
    else
      puts "Person with id = #{id} doesn't seem to exist."
    end
  end  
 
 #lody
  def show_ice(id)
    if !@@icecream.at(id).nil?
      puts "Icecream with id = #{id}:
      taste = #{@@icecream[id].taste} ,
      type = #{@@icecream[id].type} ,
      price = #{@@icecream[id].price}."
    else
      puts "Icecream with id = #{id} doesn't appear to exist. Please add a new one."
    end
  end
 
  def add_ice(id, taste, model, price)
    size = @@icecream.size
    id = 0
    id += 1 while id < size && !@@icecream[id].nil?
    icecre = Icecream.new(id, taste, model, price)
    @@icecream.insert(id, icecre)
    puts "Added new ice cream to database:
    id - #{@@icecream[id].id},
    taste - #{@@icecream[id].taste},
    type - #{@@icecream[id].type},
    price - #{@@icecream[id].price}."
  end  
  
  def edit_ice(id, taste, model, price)
    if !@@icecream.at(id).nil?
      insert_data_edit_person(id, firstname, lastname)
      puts "Ice cream with id = #{@@icecream[id].id} has been updated."
    else
      puts "Ice cream with id = #{id} doesn't appear in database."
    end
  end  
  
  def insert_data_edit_ice(id, taste, model, price)
    @@icecream[id].taste = taste if taste != ''
    @@icecream[id].type = type if type != ''
    @@icecream[id].price = price if price != ''
  end
    
  def delete_ice(id)
    if !@@icecream.at(id).nil?
      @@icecream[id] = nil
      puts "Ice cream with id = #{id} has been removed."
    else
      puts "Ice cream with id = #{id} doesn't seem to exist."
    end
  end
 
  #smak
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
    
  def add_flavor(id, name, price)
    size = @@flavor.size
    id = 0
    id += 1 while id < size && !@@flavor[id].nil?
    flavo = Flavor.new(id, name, price)
    @@flavor.insert(id, flavo)
    puts "Added new flavor to database:
    id - #{@@flavor[id].id},
    name - #{@@flavor[id].name},
    price - #{@@flavor[id].price}."  
  end
    
  def edit_flavor(id, name, price)
      if !@@flavor.at(id).nil?
      insert_data_edit_flavor(id, name, price)
      puts "Flavor with id = #{@@flavor[id].id} has been updated."
    else
      puts "Flavor with id = #{id} doesn't appear in database."
    end
  end  
  
  def insert_data_edit_flavor(id, name, price)
    @@flavor[id].name = name if name != ''
    @@flavor[id].price = price if price != ''
  end
    
  def delete_flavor(id) 
    if !@@flavor.at(id).nil?
      @@flavor[id] = nil
      puts "Flavor with id = #{id} has been removed."
    else
      puts "Flavor with id = #{id} doesn't seem to exist."
    end
  end
end
