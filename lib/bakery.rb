Class Bakery
  attr_accessor :someone, :icecream
 @@someone = []
 @@icecream = []

 def show_ice(id)
  if !@@icecream.at(id).nil?
    puts "Icecream with id = #{id}:
     taste = #{@@books[id].taste} ,
     model = #{@@books[id].model} ,
     price = #{@@books[id].price}."
    puts "Icecream with id = #{id} doesn't appear in database."
  end
 end


end
