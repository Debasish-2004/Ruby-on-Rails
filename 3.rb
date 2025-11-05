class Dog
  def speak
    "Woof!"
  end
end

class Cat
  def speak
    "Meow!"
  end
end

class Cow
  def speak
    "Moo!"
  end
end

# Polymorphism in action
animals = [Dog.new, Cat.new, Cow.new]
animals.each do |animal|
  puts animal.speak
end
