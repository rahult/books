require 'rubygems'
require 'builder'

xml = Builder::XmlMarkup.new(:target => STDOUT, :indent => 2)

xml.instruct!

xml.friends do
  xml.friend(:source => 'college') do
    xml.name "Joe Smith"
    xml.address do
      xml.street "123 Main Street"
      xml.city "Anywhere, USA 00000"
    end
  end
end
