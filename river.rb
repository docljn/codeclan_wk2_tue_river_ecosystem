class River

  attr_reader :name

  def initialize(name, *contents)
    @name = name
    @contents = contents || []
  end

  def count_fish
    return @contents.length
    p @contents
  end


  def stock_river(fish)
    @contents.push(fish)
  end


end
