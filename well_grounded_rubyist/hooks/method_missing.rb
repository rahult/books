class Cookbook
  attr_accessor :title, :author

  def initialize
    @recipes = []
  end

  def method_missing(m, *args, &block)
    @recipes.send(m, *args, &block)
  end
end

cb = Cookbook.new

cb << ["Beef", "Curry"]
cb << ["Chicken", "Curry"]

beef_dishes = cb.select { |recipes| recipes.include? "Beef" }

p beef_dishes
