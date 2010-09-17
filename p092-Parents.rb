class Parent
  def say_hello
    puts "Hello from #{self}."
  end
end

p = Parent.new
p.say_hello
# Subclass the parent ...
class Child < Parent
end

c = Child.new
c.say_hello

puts "The superclass of Child is #{Child.superclass}"
puts "The superclass of Parent is #{Parent.superclass}"
puts "The superclass of Object is #{Object.superclass}"
puts "The superclass of BasicObject is #{BasicObject.superclass.inspect}"

class Person
  def initialize(name)
    @name = name
  end
  def to_s
    "Person named #{@name}"
  end
end
p = Person.new("Michael")
puts p