class C; end
c = C.new

class << c
  def x; end
  def y; end
  def z; end

  protected :y
  private :z
end

p c.singleton_methods.sort


class C; end
class D < C; end

def C.a_class_method_on_C; end
def D.a_class_method_on_D; end

p D.singleton_methods

p File.singleton_methods - File.singleton_methods(false)
