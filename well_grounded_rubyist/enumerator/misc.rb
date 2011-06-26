names = %w{ David Black Yukihiro Matsumoto }
names.each_slice(2).map do |first, last|
  puts "First name: #{first}, Last name: #{last}"
end
