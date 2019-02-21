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
    # 雑にここに入れた
    assert_equal('2.1', mountain_bike.tire_size)
    assert_equal('10-speed', mountain_bike.chain)
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