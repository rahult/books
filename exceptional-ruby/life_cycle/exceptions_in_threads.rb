t1 = Thread.new { raise "First!" }
t2 = Thread.new { raise "Second!" }
sleep 1
begin
  t2.join
rescue => error
  puts "Child raise error: #{error.inspect}"
end
