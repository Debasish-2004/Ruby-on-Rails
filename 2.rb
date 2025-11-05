class Parent 
  def car
    puts "this is my car"
  end
end 

class Child < Parent
  def car
    super
    puts " this is my bus"
  end
end

car1 = Child.new
car1.car