str = "Peel,Emma,Mrs.,talented amateur"

p /([A-Za-z]+),[A-Za-z]+,(Mrs?\.)/.match(str)

puts "Dear #{$2} #{$1},"

# Failure
p /a/.match("b")

# Success
string = "My phone number is (123) 555-1234."
phone_re = /\((\d{3})\)\s(\d{3})-(\d{4})/
m = phone_re.match(string)

unless m
  puts "There was no match-sorry."
  exit
end

print "The entire part of the string that matched: "
puts m[0]

puts "The three captures: "
3.times do |index|
  puts "Capture ##{index+1}: #{m[index]}"
end

m.captures.each { |str| puts str }

p /((a)((b)c))/.match("abc")

print "The part of the string before the part that matched was: "
puts m.pre_match

print "The part of the string after the part that matched was: "
puts m.post_match

print "The second capture began at character "
puts m.begin(2)

print "The third capture ended at chartacter "
puts m.end(3)
