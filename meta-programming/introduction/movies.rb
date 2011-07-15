require './orm'

class Movie < Entity
  def initialize(ident)
    super("movies", ident)
  end

  def title
    get("title" )
  end

  def title=(value)
    set("title", value)
  end

  def director
    get("director" )
  end

  def director=(value)
    set("director", value)
  end
end
