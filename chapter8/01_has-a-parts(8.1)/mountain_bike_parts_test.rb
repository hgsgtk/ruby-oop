require 'minitest/autorun'
require_relative './mountain_bike_parts'

class MountainBikePartsTest < Minitest::Unit::TestCase
  def test_spares
    mountain_bike_parts = MountainBikeParts.new(
        front_shock: 'Manitou',
        rear_shock: 'Fox')

    got = mountain_bike_parts.spares
    wanted = {
        tire_size: '2.1',
        chain: '10-speed',
        rear_shock: 'Fox'
    }
    assert_equal(wanted, got)
  end
end