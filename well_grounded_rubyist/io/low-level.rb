File.open("wow_low_sys.txt", "w") do |file|
  file.print("Hello ");
  file.syswrite("Jimbo");
end

puts File.read("wow_low_sys.txt")
