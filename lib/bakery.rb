class Bakery
  attr_accessor :someone, :icecream
  @@someone = []
  @@icecream = []

  
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
      @@someone[id].firstname = firstname if firstname != ''
      @@someone[id].lastname = lastname if lastname != ''
      puts "Person with id = #{@@someone[id].id} has been updated."
    else
      puts "Person with id = #{id} doesn't appear in database."
    end
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
      model = #{@@icecream[id].model} ,
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
    model - #{@@icecream[id].model},
    price - #{@@icecream[id].price}."
  end  
  
  def edit_ice(id, taste, model, price)
    if !@@icecream.at(id).nil?
      @@icecream[id].taste = taste if taste != ''
      @@icecream[id].model = model if model != ''
      @@icecream[id].price = price if price != ''
      puts "Ice cream with id = #{@@icecream[id].id} has been updated."
    else
      puts "Ice cream with id = #{id} doesn't appear in database."
    end
  end  
 
  def delete_ice(id)
    if !@@icecream.at(id).nil?
      @@icecream[id] = nil
      puts "Ice cream with id = #{id} has been removed."
    else
      puts "Ice cream with id = #{id} doesn't seem to exist."
    end
  end
 
  #cos

end
