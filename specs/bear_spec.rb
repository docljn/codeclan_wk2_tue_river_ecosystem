# bear_spec.rb
require("minitest/autorun")
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bear")

class TestBear < MiniTest::Test
# TEST FUNCTION NAMING
# must start with "test_"

  def setup
    @yogi = Bear.new("Yogi")
  end


  def test_fish_has_name
    assert_equal("Yogi", @yogi.name)
  end


end
# end bear_spec.rb
