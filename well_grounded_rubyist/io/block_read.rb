File.open("io/record.txt") do |f|
  while line = f.gets
    name, nationality, instrument, dates = line.chomp.split("|")
    puts "#{name} (#{dates}), who was #{nationality}, played #{instrument}. "
  end
end

