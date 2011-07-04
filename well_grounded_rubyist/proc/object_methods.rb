class A
  def a_method
    puts "Definition in class A"
  end
end

class B < A
  def a_method
    puts "Definition in class B (subclass of A)"
  end
end

class C < B
end

c = C.new

c.a_method
A.instance_method(:a_method).bind(c).call
