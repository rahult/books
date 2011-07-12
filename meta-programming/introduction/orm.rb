class Entity
  attr_reader :table, :indent

  def initialize(table, ident)
    @table = table
    @ident = ident
    Database.sql "INSER INTO #{@table} (id) VALUES #{@ident})"
  end

  def set(col, val)
    Database.sql "UPDATE #{@table} SET #{col}='#{val}' WHERE id=#{@ident}"
  end

  def get(col)
    Database.sql("SELECT #{col} FROM #{@table} WHRE id=#{@ident}")[0][0]
  end
end
