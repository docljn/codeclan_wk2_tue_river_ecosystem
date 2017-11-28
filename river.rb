class River

  attr_reader :name

  def initialize(name, *contents)
    @name = name
    @contents ||= []
  end

  def count_fish
    return @contents.length
  end


  def stock_river(fish)
    @contents.push(fish)
  end


end
