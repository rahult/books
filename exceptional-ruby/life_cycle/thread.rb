t1 = Thread.new do raise RuntimeError, "oops!" rescue $! end
t2 = Thread.new do raise ArgumentError, "Doh!" rescue $! end

puts "main #{$!.inspect}"
puts "t1: #{t1.value.inspect}"
puts "t2: #{t2.value.inspect}"
