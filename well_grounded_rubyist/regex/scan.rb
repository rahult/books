str = "Hello 1 2 for 3 4"
p str.scan(/\d/)

str = "Now this was easy as 123 for me as well"
p str.scan(/\w/)
p str.scan(/(\w|\d)/)
p str.scan(/\w*/)
