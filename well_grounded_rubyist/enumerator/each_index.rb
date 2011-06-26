names = %w{ David Yukihiro Joe Jim John Joan Jeff Judy }
names.each_with_index do |name, i|
  puts name
  puts "-----" if (i+1) % 3 == 0
end

p ('a'..'z').map.with_index { |letter, i| [letter, i] }
