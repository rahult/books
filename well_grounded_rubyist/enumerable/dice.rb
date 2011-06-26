class Die
  include Enumerable

  def each
    loop do
      yield rand(6) + 1
    end
  end
end

dice = Die.new

dice.each do |roll|
  puts "Your rolled a #{roll}."
  if roll == 6
    puts "Your win!"
    break
  end
end
