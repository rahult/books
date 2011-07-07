string = "Test String"
methods = string.methods
bang_methods = string.methods.grep(/.!/)

def unmatched_bang_methods(object)
  object.methods.grep(/.!/).reject do |method|
    object.methods.include?(method[0..-2].to_sym)
  end
end

puts "All bang methods have their counterpart non-bang methods"
p unmatched_bang_methods(string)

def string.new_bang!; end
puts "Now we have a bang method which does not contains its counterpart non-bang method"
p unmatched_bang_methods(string)
