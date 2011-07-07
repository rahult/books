puts "Range"
p Range.instance_methods(false)
puts "Enumerable"
p Enumerable.instance_methods(false)
puts "Range overides Enumerable"
p Range.instance_methods(false) & Enumerable.instance_methods(false)
puts "Range + Enumerable minus overides"
p Range.instance_methods(false) | Enumerable.instance_methods(false)


overrides = {}
enum_classes = ObjectSpace.each_object(Class).select do |klass|
  klass.ancestors.include?(Enumerable)
end

enum_classes.sort_by { |c| c.name }.each do |c|
  overrides[c] = c.instance_methods(false) &
              Enumerable.instance_methods(false)
end

overrides.delete_if { |c, methods| methods.empty? }
overrides.each do |c, methods|
  puts "class #{c} overrides: #{methods.join(", ")}"
end

p ObjectSpace.each_object(Class).collect { |m| m }
p ObjectSpace.each_object(Module).collect { |m| m }
