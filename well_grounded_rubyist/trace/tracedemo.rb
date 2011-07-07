def x
  y
end

def y
  z
end

def z
  raise
  puts "Stacktrace: "
  p caller
end

x
