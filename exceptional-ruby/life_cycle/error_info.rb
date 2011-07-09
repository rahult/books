require 'English'

p $!

begin
  raise "Oops!"
rescue
  p $!.inspect
  p $ERROR_INFO
end

p $!.inspect
