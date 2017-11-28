class River

  attr_reader :name, :contents #needed so bear can select a fish

  def initialize(name, *contents)
    @name = name
    @contents = contents || []
  end

  def count_fish
    return @contents.length
  end


  def stock_river(fish)
    @contents.push(fish)
  end



end
