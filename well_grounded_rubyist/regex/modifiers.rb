str = "This (including\n what's in parens\n) takes up three lines."
p /\(.*\)/m.match(str)
