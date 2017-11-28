# river_spec.rb
require("minitest/autorun")
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../river")

class TestRiver < MiniTest::Test
# TEST FUNCTION NAMING
# must start with "test_"
  def setup
    @amazon = River.new("Amazon")
  end

  def test_river_has_name
    expected = "Amazon"
    output = @amazon.name
    assert_equal("Amazon", output)
  end

  def test_river_has_fish
    skip ""
  end

  def test_stock_river_adds_fish
    skip ""
  end



end
# end river_spec.rb
