def errors_with_message(pattern)
  m = Module.new
  (class << m; self end).instance_eval do
    define_method(:===) do |e|
      pattern === e.message
    end
  end
end

puts "About to raise"
begin
  raise "Timeout while reading from socket"
rescue errors_with_message(/socket/)
  puts "Ignoring socket error"
end

puts "Continuing..."
