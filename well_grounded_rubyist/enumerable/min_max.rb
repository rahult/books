numbers = [1, 2, 3, 4, 5]

languages = %w(Ruby C APL Perl Smalltalk)

states_hash = { "New York" => "NY", "Maine" => "Me", "Alaska" => "AK", "Alabama" => "AL" }

p numbers.max

p numbers.min

p languages.max

p languages.min

p languages.min_by { |language| language.size }

p languages.minmax

p languages.minmax_by { |language| language.size }
