# bear_spec.rb
require("minitest/autorun")
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bear")
require_relative("../fish")
require_relative("../river")

class TestBear < MiniTest::Test
# TEST FUNCTION NAMING
# must start with "test_"

  def setup
    @yogi = Bear.new("Yogi")

    @perch = Fish.new("perch")
    @carp = Fish.new("carp")
    @loach = Fish.new("loach")
    @bream = Fish.new("bream")
    @trout = Fish.new("trout")
    @salmon = Fish.new("salmon")

    @tay = River.new("Tay", @perch, @carp, @loach, @bream, @trout, @salmon)
  end


  def test_bear_has_name
    assert_equal("Yogi", @yogi.name)
  end

  def test_bear_eat_fish_removes_fish_from_river
    @yogi.eat_fish(@tay)
    expected = 5
    output = @tay.count_fish
    assert_equal(expected, output)
  end

  def test_bear_fish_count__none_eaten
    assert_equal(0, @yogi.fish_count)
  end

  def test_bear_eat_fish_adds_fish_to_stomach
    @yogi.eat_fish(@tay)
    expected = 1
    output = @yogi.fish_count
    assert_equal(expected, output)
  end





end
# end bear_spec.rb
