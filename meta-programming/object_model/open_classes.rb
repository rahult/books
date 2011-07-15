class D
  def x; 'x'; end
end

class D
  def y; 'y'; end
end

require 'test/unit'

class OpenClassesTest < Test::Unit::TestCase
  def test_availability_of_method_x_in_D
    obj = D.new
    assert_equal 'x', obj.x
  end

  def test_availability_of_method_y_in_D
    obj = D.new
    assert_equal 'y', obj.y
  end
end
