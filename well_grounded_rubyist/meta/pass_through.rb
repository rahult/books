class String
  alias __old_reverse__ reverse
  def reverse
    $stderr.puts "Reversing a string!"
    __old_reverse__
  end
end

puts "Hello World!".reverse


require 'yaml'

class Hash
  alias __old_set__ []=
  def []=(key, value)
    __old_set__(key, value)
    File.open("hash_values", "w") do |f|
      f.puts self.to_yaml
    end
    value
  end
end

hurra = {}

hurra[:pirate] = "Jack Sparrow"
hurra[:ship]   = "Black Pearl"

File.open("hash_values").readlines
