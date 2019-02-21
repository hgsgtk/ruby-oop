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

  # Minitest::UnexpectedError: NoMethodError: super: no superclass method `spares' for #<MountainBike:0x007fd3449b7b10>
  def test_spares
    mountain_bike = MountainBike.new(
        size: 'S',
        front_shock: 'Manitou',
        rear_shock: 'Fox'
    )
    mountain_bike.spares
  end
end