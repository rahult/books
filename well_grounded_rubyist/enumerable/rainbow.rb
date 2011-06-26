class Rainbow
  include Enumerable

  COLOURS = %w(red orange yellow green blue indigo violet)

  def each
    COLOURS.each { |colour| yield colour }
  end

  def self.favorite?(colour)
    colour.eql?(COLOURS[rand(COLOURS.size)])
  end
end

colours = Rainbow.new

p colours.find { |n| n =~ /e/ }

p colours.find_all { |n| n =~ /e/ }

failure = lambda { "No foundy this element" }
p colours.find(failure) { |n| n =~ /eds/ }

p colours.reject { |n| n =~ /e/ }

p colours.grep(/re/)

p colours.group_by { |colour| colour.size }

p colours.partition { |colour| Rainbow.favorite?(colour) }

p colours.first

# Last does not exsist as finding the last element might be possible in some cases
# p colours.last
