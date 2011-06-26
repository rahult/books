module Music
  class Scale
    NOTES = %w( c c# d d# e f f# g a a# b )

    def play
      NOTES.to_enum.each
    end
  end
end

scale = Music::Scale.new

scale.play.with_index { |s, i| puts "Note #{i}: #{s}" }

# It is not going to work as Scale does not
# include Enumerable and does not have a each method
# scale.map {}

# However we can convert an enumerator object from
# Scale's play method
enum = scale.enum_for(:play)
enum.map {}
