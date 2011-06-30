p (test ?d, "io")

p File::Stat.new("io/record.txt")

p File.open("io/record.txt") { |f| f.stat }
