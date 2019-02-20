require 'minitest/autorun'
require_relative './road_bike'

class RoadBikeTest < Minitest::Unit::TestCase
  def test_size
    road_bike = RoadBike.new(
                            size: 'M',
                            tape_color: 'red'
    )
    assert_equal('M', road_bike.size)
  end
end