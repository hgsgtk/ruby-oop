require 'minitest/autorun'
require_relative './road_bike_parts'

class RoadBikePartsTest < Minitest::Unit::TestCase
  def test_spares
    road_bike_parts = RoadBikeParts.new({tape_color: 'red'})

    got = road_bike_parts.spares
    wanted = {
        tire_size: '23',
        chain: '10-speed',
        tape_color: 'red'
    }
    assert_equal(wanted, got)
  end
end