comment_regexp = /^\s*#/
p comment_regexp.match("  # Pure comment!")

# Look ahead
str = "123 456. 789"
p m = /\d+(?=\.)/.match(str)

# Look ahead negation
str = "123 456. 789"
p m = /\d+(?!\.)/.match(str)

# Lookbehind
re = /(?<=David )BLACK/
p re.match("David BLACK")

# Lookbehind negation
re = /(?<!David )BLACK/
p re.match("Monty BLACK")

# Match not just assert
str = "abc def ghi"
p /(abc) (?:def) (ghi)/.match(str)
