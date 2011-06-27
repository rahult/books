p /\d+/.match("There's a digit here somewh3re...")
p /\d+/.match("No digits here. Move along sir..")
p /(\d+)/.match("Digits-R-Us 2345")

string = "abc!def!ghi!"
# Greedy sons of Quantifiers
match = /.+!/.match(string)
puts match[0]

# I am taking away your greed, repent my son, only take what you need
match = /.+?!/.match(string)
puts match[0]

# Match itself and itself again
p /((\d+)(5))/.match("Digits-R-Us 2345")

# Only eat what I tell you to eat
p /\d{2}/.match("Digits-R-Us 2345")

# Only eat what I tell you to eat
p /\d{2}/.match("Digits-R-Us 2345")

number = "123-4567-90123456"

p /\d{3}-\d{4}/.match(number)

p /\d{5,}/.match(number)

p /([A-Z]\d?){5}/.match("David BLACK1")

p /([A-Z]{5})/.match("David BLACK")

