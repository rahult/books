states = %w(NJ NY CT MA VT FL)

p states.take(2)

p states.drop(2)

p states.take_while { |state| state =~ /N/ }

p states.drop_while { |state| state =~ /N/ }
