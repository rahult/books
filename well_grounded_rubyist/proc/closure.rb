def talk
  a = "Hello"
  puts a
end

a = "Goodbye"
talk
puts a

m = 10
[1, 2, 3].each { |x| puts x * m }

def multiply_by(m)
  Proc.new { |x| puts x * m }
end

mult = multiply_by(10)
mult.call(12)


def call_some_proc(pr)
  a = "irrelevant 'a' in method scope"
  puts a
  pr.call
end

a = "'a' to be used in Proc block"
pr = Proc.new { puts a }
pr.call
call_some_proc(pr)

def make_counter
  n = 0
  return Proc.new { n += 1 }
end

c = make_counter

puts c.call
puts c.call
puts c.call

d = make_counter

puts d.call
puts d.call

n = 20
e = make_counter

puts e.call
puts e.call
