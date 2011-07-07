module M
  def self.included(klass)
    puts "Being included in class #{klass}"
  end

  def self.extended(obj)
    puts "Being extended using object #{obj}"
  end
end

obj = Object.new

class << obj
  include M
end

obj.extend(M)
