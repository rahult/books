class C
  class << self
    def self.inherited(subklass)
      puts "Singleton call of C just got inherited"
      puts "But you will never see this message"
    end
  end

  def self.inherited(subklass)
    puts "#{self} just got subclassed by #{subklass}"
  end
end

class D < C
  class << self
    puts "D's singleton class now exists, but no callback"
  end
end

class E < D
end
