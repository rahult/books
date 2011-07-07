module M
  def self.extended(obj)
    puts "Module #{self} is being used by #{obj}"
  end

  def a_instance_method
    puts "Hi, I am an instance method"
  end
end

class C; end

c = C.new
c.extend(M)
c.a_instance_method
