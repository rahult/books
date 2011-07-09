class MyError < StandardError
  attr_reader :original
  def initialize(msg, original=$!)
    super(msg)
    @original = original
  end
end

begin
  begin
    raise "Error A"
  rescue => error
    raise MyError, "Error B"
  end
rescue => error
  puts "Current failure: #{error.inspect}"
  puts "Original failure: #{error.original.inspect}"
end
