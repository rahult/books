class XML < BasicObject
  attr_reader :xml

  def initialize(indent=2)
    @indent = indent
    @xml = ""
  end

  def method_missing(method_name, &block)
    @xml = "<#{method_name}>\n"
    yield(self) if block
    @xml << "</#{method_name}>"
  end
end

builder = XML.new

builder.first do
  builder.second do
  end
end

puts builder.xml
