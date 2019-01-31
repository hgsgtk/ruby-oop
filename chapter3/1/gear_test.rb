require 'test/unit'
require_relative './gear'

class GearTest < Test::Unit::TestCase

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
    assert_equal(134.45454545454547, Gear.new(51, 11,26, 1.5).gear_inches)
  end
end