class Bear

  attr_reader :name

  def initialize(name)
    @name = name
    @stomach = []
  end


  def fish_count
    return @stomach.length
  end

  def eat_fish(river)
    taken = river.contents.sample
    river.contents.delete(taken)
    @stomach.push(taken)
    if taken.name == "puffer"
      @stomach.clear()
      growls("I feel so sick")
    end
  end

  def growls(words)
    return "GRRRR! #{words.upcase}! GRRRR!"
  end



end
