file = File.new("regex/scan.rb")
# Whole file as one string
p file.read
file.rewind

file = File.new("regex/scan.rb")
# Line
p file.gets
p file.readline
file.rewind

file = File.new("regex/scan.rb")
# Line
p file.readlines
file.rewind

