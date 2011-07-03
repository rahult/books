str = "I am a string, happy little string"

class << str
  def twice
    self + " " + self
  end
end

puts str.twice


class Person
  attr_accessor :name
end

david = Person.new
david.name = "David"
matz = Person.new
matz.name = "Matz"
ruby = Person.new
ruby.name = "Ruby"

def david.name
  "[not available]"
end

module Secrative
  def name
    "[not available]"
  end
end

class << ruby
  include Secrative
end

puts "We've got one person named #{matz.name}, " 
puts "one named #{david.name},"
puts "and one named #{ruby.name}."
