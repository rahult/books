def return_test
  l = lambda { return }
  l.call
  puts "Still here!"
  p = Proc.new { return }
  p.call
  puts "You won't see this message!"
end

return_test

lam = lambda { |x| puts "Lambda Works" }
pr = proc { |x| puts "Proc Works" }

pr.call(1)
lam.call(1)

pr.call
lam.call
