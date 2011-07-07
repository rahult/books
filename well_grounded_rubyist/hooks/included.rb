module M
  def self.included(c)
    puts "I have just been mixed into #{c}"

    def c.a_class_method
      puts "Class method has been include in this class"
    end
  end

  def a_instance_method
    puts "Instance method has been included in the mixin"
  end
end

class C
  include M
end

c = C.new

c.a_instance_method

C.a_class_method
