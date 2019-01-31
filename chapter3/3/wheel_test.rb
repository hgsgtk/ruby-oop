require 'test/unit'
require_relative './wheel'

class WheelTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # Fake test
  def test_gear_inches
    assert_equal(1265.3333333333333, Wheel.new(51, 11, 26, 1.5).gear_inches)
  end
end