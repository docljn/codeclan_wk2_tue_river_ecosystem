# river_spec.rb
require("minitest/autorun")
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../river")
require_relative("../fish")

class TestRiver < MiniTest::Test
# TEST FUNCTION NAMING
# must start with "test_"
  def setup
    @amazon = River.new("Amazon")

    @perch = Fish.new("perch")
    @carp = Fish.new("carp")
    @loach = Fish.new("loach")
    @bream = Fish.new("bream")
    @trout = Fish.new("trout")
    @salmon = Fish.new("salmon")

    @tay = River.new("Tay", @perch, @carp, @loach, @bream, @trout, @salmon)






  end

  def test_river_has_name
    expected = "Amazon"
    output = @amazon.name
    assert_equal("Amazon", output)
  end

  def test_river_has_fish
    @tay.count_fish
    expected = 6
    output = @tay.count_fish
    assert_equal(expected, output)
  end



  def test_stock_river_adds_fish
    @amazon.stock_river(@perch)
    expected = 1
    output = @amazon.count_fish
    assert_equal(expected, output)
  end







end
# end river_spec.rb
