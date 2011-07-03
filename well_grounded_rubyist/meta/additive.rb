class Array
  def map_with_index
    mapping = []
    each_with_index do |e, i|
      mapping << yield(e, i)
    end
    mapping
  end
end

numbers = *1..5
characters = *'a'..'e'

numbers.map_with_index do |n, i|
  puts "Number #{n} -> Character #{characters[i]}"
end
