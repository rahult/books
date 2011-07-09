tries = 0
begin
  tries += 1
  puts "Trying: #{tries}"
  raise "Didn't Work"
rescue
  retry if tries < 3
  puts "I give up"
end
