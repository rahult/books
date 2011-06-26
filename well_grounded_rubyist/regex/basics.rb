puts "Match!" if /abc/.match("The alphabet starts with abc.")
puts "Match!" if "The alphabet starts with abc.".match(/abc/)

puts "Match!" if /abc/ =~ "The alphabet starts with abc."
puts "Match!" if "The alphabet starts with abc." =~ /abc/

# match vs =~
p /abc/ =~ "The alphabet starts with abc."
p /abc/.match("The alphabet starts with abc.")

# Dot .
puts /.ejected/.match("%ejected")
puts /.ejected/.match("rejected")

# Range
p /[A-Fa-f0-9]/.match("abcdf012g3456789")

# Negation
p /[^A-Fa-f0-9]/.match("abcdf012g3456789")

# [0-9] or \d
p /\d/.match("ab1cd")

# \w
p /\w/.match("%%%a%%%")

# \s
p /\s/.match("abc\ndef")

# [^0-9] or \D
p /\D/.match("123a456")


