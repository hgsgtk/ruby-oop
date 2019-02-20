require 'minitest/autorun'
require_relative './mountain_bike'

class MountainBikeTest < Minitest::Unit::TestCase
  # Minitest::UnexpectedError: NoMethodError: undefined method `size' for #<MountainBike:0x007f890989d160>
  def test_size
    mountain_bike = MountainBike.new(
                                    size: 'S',
                                    front_shock: 'Manitou',
                                    rear_shock: 'Fox'
    )
    assert_equal('S', mountain_bike.size)
  end
end