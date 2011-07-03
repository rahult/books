class Cars
end

module Makers
  def makes
    %w{ Honda Ford Toyota Chevrolet Volvo }
  end
end

Cars.extend(Makers)

p Cars.makes

class << Cars
  p ancestors
end

class Sedan < Cars
  class << self
    p ancestors
  end
end
