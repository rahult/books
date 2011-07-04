C = Class.new

C.class_eval do
  def some_method
    puts "Created in class_eval"
  end
end

c = C.new
c.some_method

var = "initialized variable"

# class C
#   puts var
# end

C.class_eval { puts var }

C.class_eval { def talk; puts var; end }
# C.new.talk

C.class_eval { define_method("talk") { puts var } }
C.new.talk
