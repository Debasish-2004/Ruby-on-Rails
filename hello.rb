class Car 
  def initialize(brand ,color)
    @brand = brand 
    @color = color
  end

  def spec
    puts "a #{@color} colour #{@brand}"
    
  end
end
 mycar = Car.new("tesla","red")
mycar.spec
