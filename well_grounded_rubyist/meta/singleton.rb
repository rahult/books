class Object
  def singleton
    class << self
      self
    end
  end
end

class Annoying
  def talk
    puts "Bla bla bla bla...."
  end
end

class Object
  def speak(object)
    puts object ? "Yes" : "No"
  end
end

a = Annoying.new
a.talk
speak a.public_methods.include?(:shutup)

def a.shutup
  puts "Shut up"
end

a.shutup

# Lets see if our singleton works
speak a.singleton.instance_methods.include?(:shutup)
