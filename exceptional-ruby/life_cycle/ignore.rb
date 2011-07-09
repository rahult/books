def ignore_exceptions(*exceptions)
  yield
rescue *exceptions => e
  puts "IGNORED: '#{e}'"
end

puts "Doing something very stupid and risky"
ignore_exceptions(IOError, SystemCallError) do
  open("NONEXISTANT_FILE")
end
puts "Move along sir..."
