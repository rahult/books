class C
  def self.singleton_method_added(m)
    puts "Method #{m} was just defined."
  end
end

class << C
  def test

  end
end

class C
  def self.another_test
  end
end

obj = C.new

def obj.anther_another_test
end
