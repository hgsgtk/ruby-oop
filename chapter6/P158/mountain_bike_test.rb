require 'minitest/autorun'
require_relative './mountain_bike'

class MountainBikeTest < Minitest::Unit::TestCase
  # Test Passed
  def test_size
    mountain_bike = MountainBike.new(
                                    size: 'S',
                                    front_shock: 'Manitou',
                                    rear_shock: 'Fox'
    )
    assert_equal('S', mountain_bike.size)
  end
end