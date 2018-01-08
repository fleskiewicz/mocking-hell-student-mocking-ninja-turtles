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
  
  def add_someone(id, firstname, lastname)
    
  end
 
  def edit_someone(id, firstname, lastname)
    if !@@someone.at(id).nil?
      insert_data_edit_person(id, firstname, lastname)
      puts "Person with id = #{@@someone[id].id} has been updated."
    else
      puts "Person with id = #{id} doesn't appear in database."
    end
  end  
 
  def delete_someone(id)
   
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
 
  def add_ice
 
  end  
  
  def edit_ice
  
  end  
 
  def delete_ice(id)
  
  end
 
  #cos

end
