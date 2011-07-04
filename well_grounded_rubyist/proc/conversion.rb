def capture_block(&block)
  puts "Got block as proc"
  block.call
end

capture_block { puts "Inside the block" }

p = Proc.new { puts "the proc argument will server as a code block." }

capture_block(&p)

class Person
  attr_accessor :name
  def self.to_proc
    Proc.new { |person| person.name }
  end
end

d = Person.new
d.name = "David"

m = Person.new
m.name = "Matz"

puts [d, m].map(&Person)
puts [d, m].map { |person| person.name }
p = Proc.new { |t| puts t.name }
puts [d, m].map(&p)
